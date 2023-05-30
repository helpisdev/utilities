import 'package:permission_handler/permission_handler.dart';
import 'package:universal_io/io.dart';

export 'package:permission_handler/permission_handler.dart';

/// A set of [Permission]s.
typedef PermissionBucket = Set<Permission>;

/// Handles requesting permissions using the `permission_handler` package.
class PermissionHandler {
  /// Constructs a [PermissionHandler] with an optional set of [permissions] to
  /// request.
  const PermissionHandler({this.permissions = const <Permission>{}});

  /// The permissions to request.
  final PermissionBucket permissions;

  /// Gets the status of the given [permission].
  Future<PermissionStatus>? requestStatus(final Permission permission) =>
      permissions.lookup(permission)?.status;

  /// Requests permissions and handles the response for each.
  Future<void> request() async {
    if (Platform.isWindows || Platform.isAndroid || Platform.isIOS) {
      for (final Permission permission in permissions) {
        final PermissionStatus status = await requestStatus(permission)!;
        switch (status) {
          case PermissionStatus.granted:
          case PermissionStatus.restricted:
          case PermissionStatus.limited:
            break;
          case PermissionStatus.denied:
            await permission.request();
            break;
          case PermissionStatus.permanentlyDenied:
            await openAppSettings();
            break;
        }
      }
    }
  }
}
