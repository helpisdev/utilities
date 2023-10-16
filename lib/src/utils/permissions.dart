import 'dart:async';

import 'package:permission_handler/permission_handler.dart';
import 'package:universal_io/io.dart';

export 'package:permission_handler/permission_handler.dart';

/// A set of [Permission]s.
typedef PermissionBucket = Set<Permission>;

/// Signature for a function that requests user permission to open the
/// application's settings. Used by [PermissionHandler.request] as an optional
/// parameter and executing before attempting to use [openAppSettings] when a
/// permission's [PermissionActions.status] is
/// [PermissionStatus.permanentlyDenied]. The return value indicates whether or
/// not the [openAppSettings] function will be fired.
typedef RequestOpenAppSettingsCallback = FutureOr<bool> Function(
  Permission permission,
);

/// Signature for a function that handles the status of a [Permission] manually.
typedef HandleStatusManuallyCallback = FutureOr<bool> Function({
  required PermissionStatus status,
  required Permission permission,
});

/// Handles requesting permissions using the `permission_handler` package.
class PermissionHandler {
  /// Constructs a [PermissionHandler] with an optional set of [permissions] to
  /// request.
  const PermissionHandler({this.permissions = const <Permission>{}});

  /// The permissions to request.
  final PermissionBucket permissions;

  /// Gets the status of the given [permission]. Returns `null` if no such
  /// [permission] is registered in the handler.
  Future<PermissionStatus>? requestStatus(final Permission permission) {
    return permissions.lookup(permission)?.status;
  }

  /// Requests a given [permission] and returns its [PermissionActions.status].
  ///
  /// If the [permission] isn't registered in the handler or the underlying
  /// platform does not permission handling, it returns `null`.
  ///
  /// If the current status is [PermissionStatus.permanentlyDenied], it requests
  /// the permission by opening the application's settings.
  ///
  /// If the current status is:
  ///
  ///   - [PermissionStatus.granted] ||
  ///   - [PermissionStatus.restricted] ||
  ///   - [PermissionStatus.limited] ||
  ///   - [PermissionStatus.provisional],
  ///
  /// then no further action is taken.
  ///
  /// An optional callback can be passed as [openSettingsCallback], to handle
  /// application specific business logic before attempting to request to open
  /// the application's settings through [openAppSettings]. This can be used to
  /// notify the user that the application's settings screen will be opened and
  /// what further action should be taken on user's behalf. The return value
  /// indicates whether or not the user consented in opening the settings
  /// screen. If `null`, the settings screen opens automatically without
  /// notifying the user.
  ///
  /// An optional callback can be passed as [handleStatusManuallyCallback], to
  /// handle edge cases where more granular control over the permission status
  /// is needed while keeping a uniform API.
  Future<PermissionStatus?> request(
    final Permission permission, {
    final RequestOpenAppSettingsCallback? openSettingsCallback,
    final HandleStatusManuallyCallback? handleStatusManuallyCallback,
  }) async {
    if (!permissions.contains(permission) || !platformHasPermissionHandling) {
      return null;
    }
    final PermissionStatus status = await requestStatus(permission)!;
    final bool handledManually = await handleStatusManuallyCallback?.call(
          permission: permission,
          status: status,
        ) ??
        false;
    if (!handledManually) {
      return switch (status) {
        PermissionStatus.granted ||
        PermissionStatus.restricted ||
        PermissionStatus.limited ||
        PermissionStatus.provisional =>
          status,
        PermissionStatus.denied => await permission.request(),
        PermissionStatus.permanentlyDenied => await grantThroughAppSettings(
            permission: permission,
            status: status,
            openSettingsCallback: openSettingsCallback,
          ),
      };
    }
    return null;
  }

  /// Requests user permission for each permission registered in the permission
  /// handler.
  ///
  /// It calls [request] for each value available in [permissions].
  Future<void> requestAll({
    final RequestOpenAppSettingsCallback? openSettingsCallback,
  }) async {
    for (final Permission permission in permissions) {
      await request(permission, openSettingsCallback: openSettingsCallback);
    }
  }

  /// Checks if the underlying [Platform] supports permission handling.
  ///
  /// Platforms that support permission handling are:
  ///
  ///   - [Platform.isWindows]
  ///   - [Platform.isAndroid]
  ///   - [Platform.isIOS]
  bool get platformHasPermissionHandling {
    return Platform.isWindows || Platform.isAndroid || Platform.isIOS;
  }

  /// Requests permission trhough app settings, if the [permission] is
  /// registered in the handler and its [PermissionActions.status] is
  /// [PermissionStatus.permanentlyDenied].
  Future<PermissionStatus?> grantThroughAppSettings({
    required final Permission permission,
    final PermissionStatus? status,
    final RequestOpenAppSettingsCallback? openSettingsCallback,
  }) async {
    if (!permissions.contains(permission)) {
      return null;
    }
    final PermissionStatus s = status ?? await requestStatus(permission)!;
    if (s.isPermanentlyDenied) {
      final bool shouldRequest =
          await openSettingsCallback?.call(permission) ?? true;
      if (shouldRequest) {
        final bool opened = await openAppSettings();
        if (opened) {
          return await requestStatus(permission);
        }
      }
    }
    return s;
  }
}
