// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart' as io;

/// Extends [io.Platform] to add platform type checks.
final class Platform {
  const Platform._();

  /// Returns `true` if the platform is a desktop platform (Linux, Windows,
  /// macOS).
  static bool get isDesktop =>
      io.Platform.isLinux || io.Platform.isWindows || io.Platform.isMacOS;

  /// Returns `true` if the platform is a mobile platform (iOS, Android,
  /// Fuchsia).
  static bool get isMobile =>
      io.Platform.isIOS || io.Platform.isAndroid || io.Platform.isFuchsia;

  /// Returns `true` if the platform is the web.
  static bool get isWeb => kIsWeb;

  /// Returns `true` if the platform is a desktop platform or the web.
  static bool get isDesktopOrWeb => isDesktop || isWeb;

  /// Returns `true` if the platform is a mobile platform or the web.
  static bool get isMobileOrWeb => isMobile || isWeb;

  static int get numberOfProcessors => io.Platform.numberOfProcessors;
  static String get pathSeparator => io.Platform.pathSeparator;
  static String get operatingSystem => io.Platform.operatingSystem;
  static String get operatingSystemVersion =>
      io.Platform.operatingSystemVersion;
  static String get localHostname => io.Platform.localHostname;
  static String get version => io.Platform.version;
  static bool get isLinux => io.Platform.isLinux;
  static bool get isMacOS => io.Platform.isMacOS;
  static bool get isWindows => io.Platform.isWindows;
  static bool get isAndroid => io.Platform.isAndroid;
  static bool get isIOS => io.Platform.isIOS;
  static bool get isFuchsia => io.Platform.isFuchsia;
  static String get localeName => io.Platform.localeName;
  static Map<String, String> get environment => io.Platform.environment;
  static String get executable => io.Platform.executable;
  static String get resolvedExecutable => io.Platform.resolvedExecutable;
  static Uri get script => io.Platform.script;
  static List<String> get executableArguments =>
      io.Platform.executableArguments;
  static String? get packageConfig => io.Platform.packageConfig;
  static String get lineTerminator => io.Platform.lineTerminator;
}
