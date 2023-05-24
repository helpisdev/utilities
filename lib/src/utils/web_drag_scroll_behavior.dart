import 'dart:ui';
import 'package:flutter/material.dart';

/// A [ScrollBehavior] that enables drag scrolling for touch, mouse, and
/// trackpad on the web.
///
/// By default, Flutter web only supports drag scrolling for touch input. This
/// [ScrollBehavior] enables drag scrolling for mouse and trackpad input in
/// addition to touch.
///
/// The [dragDevices] getter specifies that touch, mouse, and trackpad are
/// enabled for drag scrolling.
class WebDragScrollBehavior extends MaterialScrollBehavior {
  const WebDragScrollBehavior() : super();

  @override
  Set<PointerDeviceKind> get dragDevices => <PointerDeviceKind>{
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
