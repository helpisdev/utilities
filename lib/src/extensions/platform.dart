import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

/// Extends [Platform] to add platform type checks.
extension PlatformType on Platform {
  /// Returns `true` if the platform is a desktop platform (Linux, Windows,
  /// macOS).
  bool get isDesktop =>
      Platform.isLinux || Platform.isWindows || Platform.isMacOS;

  /// Returns `true` if the platform is a mobile platform (iOS, Android,
  /// Fuchsia).
  bool get isMobile =>
      Platform.isIOS || Platform.isAndroid || Platform.isFuchsia;

  /// Returns `true` if the platform is the web.
  bool get isWeb => kIsWeb;

  /// Returns `true` if the platform is a desktop platform or the web.
  bool get isDesktopOrWeb => isDesktop || isWeb;

  /// Returns `true` if the platform is a mobile platform or the web.
  bool get isMobileOrWeb => isMobile || isWeb;
}
