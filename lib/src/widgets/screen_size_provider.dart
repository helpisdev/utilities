import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../extensions/context.dart';

/// Provides the size of the screen to descendant widgets.
///
/// - The [child] parameter specifies the widget subtree to provide the screen
/// size for.
///
/// - The [size] parameter specifies the [Size] of the screen.
///
/// - The [maybeOf] static method returns the screen size for the given optional
/// [BuildContext], if a [_ScreenSizeProvider] exists in that context.
/// Otherwise, it returns `null`.
///
/// - The [of] static method returns the screen size for the given
/// [BuildContext]. It asserts that a [_ScreenSizeProvider] exists in that
/// context. Otherwise, it throws an [AssertionError].
class _ScreenSizeProvider extends InheritedWidget {
  const _ScreenSizeProvider({
    required super.child,
    required this.size,
  }) : super();

  /// Specifies the [Size] of the screen.
  final Size size;

  /// Returns the screen size for the given optional [BuildContext], if a
  /// [_ScreenSizeProvider] exists in that context. Otherwise, it returns
  /// `null`.
  static _ScreenSizeProvider? maybeOf(final BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_ScreenSizeProvider>();

  /// Returns the screen size for the given [BuildContext]. It asserts that a
  /// [_ScreenSizeProvider] exists in that context. Otherwise, it throws an
  /// [AssertionError].
  static _ScreenSizeProvider of(final BuildContext context) {
    final _ScreenSizeProvider? result = maybeOf(context);
    assert(result != null, 'No ScreenSizeProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(final _ScreenSizeProvider oldWidget) =>
      size != oldWidget.size;

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Size>('size', size));
  }
}

/// Provides the size of the screen to descendant widgets.
///
/// - The [child] parameter specifies the widget subtree to provide the screen
/// size for.
///
/// - The [width] getter returns the width of the screen.
/// - The [height] getter returns the height of the screen.
/// - The [size] getter returns the [Size] of the screen.
///
/// - The [maybeOf] static method returns the screen size for the given optional
/// [BuildContext], if a [ScreenSizeProvider] exists in that context. Otherwise,
/// it returns the size provided by the current [ScreenSizeProvider], if any.
///
/// - The [of] static method returns the screen size for the given optional
/// [BuildContext]. It asserts that a [ScreenSizeProvider] exists in that
/// context. Otherwise, it returns the size provided by the current
/// [ScreenSizeProvider].
class ScreenSizeProvider extends StatelessWidget {
  const ScreenSizeProvider({required this.child, super.key});

  /// Specifies the widget subtree to provide the screen size for.
  final Widget child;

  /// Stores the current [ScreenSizeProvider] widget, if any.
  static _ScreenSizeProvider? _provider;

  /// Returns the size of the screen. It asserts that a [ScreenSizeProvider]
  /// exists in the context.
  static Size get _size {
    assert(_provider != null, 'No ScreenSizeProvider found in context');
    return _provider!.size;
  }

  /// Returns the width of the screen.
  static int get width => _size.width.toInt();

  /// Returns the height of the screen.
  static int get height => _size.height.toInt();

  /// Returns the [Size] of the screen.
  static Size get size => _size;

  /// Returns the screen size for the given optional [BuildContext], if a
  /// [ScreenSizeProvider] exists in that context. Otherwise, it returns the
  /// size provided by the current [ScreenSizeProvider], if any.
  static Size? maybeOf([final BuildContext? context]) => context != null
      ? _ScreenSizeProvider.maybeOf(context)?.size
      : _provider?.size;

  /// Returns the screen size for the given optional [BuildContext]. It asserts
  /// that a [ScreenSizeProvider] exists in that context. Otherwise, it returns
  /// the size provided by the current [ScreenSizeProvider].
  static Size of([final BuildContext? context]) =>
      context != null ? _ScreenSizeProvider.of(context).size : _size;

  /// The [build] method returns a [ScreenSizeProvider] widget which provides the
  /// screen size to descendant widgets.
  @override
  Widget build(final BuildContext context) {
    _provider = _ScreenSizeProvider(
      size: Size(context.width, context.height),
      child: child,
    );

    return Builder(builder: (final BuildContext context) => _provider!);
  }
}
