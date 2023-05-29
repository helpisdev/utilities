import 'package:flutter/material.dart';

extension Context on BuildContext {
  /// Shorthand for [MediaQuery.of(context).size]
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// Shorthand for [MediaQuery.of(context).size.height]
  double get height => mediaQuerySize.height;

  /// Shorthand for [MediaQuery.of(context).size.width]
  double get width => mediaQuerySize.width;

  double _transformer(final double val, final double per, final double div) =>
      (val * per / 100) / div;

  /// Get a portion of the height.
  ///
  /// - [dividedBy] divides the [Context.height] * [percentage]. Can be used to
  ///   take for example one third of the 75% of the height.
  /// - [percentage] returns a percentage of the original value.
  ///
  /// The default values allow the individual usage of each parameter without
  /// side effects.
  double heightTransformer({
    final double dividedBy = 1,
    final double percentage = 100.0,
  }) =>
      _transformer(height, percentage, dividedBy);

  /// Get a portion of the width.
  ///
  /// - [dividedBy] divides the [Context.width] * [percentage]. Can be used to
  ///   take for example one third of the 75% of the width.
  /// - [percentage] returns a percentage of the original value.
  ///
  /// The default values allow the individual usage of each parameter without
  /// side effects.
  double widthTransformer({
    final double dividedBy = 1,
    final double percentage = 100.0,
  }) =>
      _transformer(width, percentage, dividedBy);

  /// Shorthand for [MediaQuery.of(context).padding]
  ThemeData get theme => Theme.of(this);

  /// Check if dark mode theme is enabled
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// Check if light mode theme is enabled
  bool get isLightMode => !isDarkMode;

  /// Shorthand for [MediaQuery.of(context).padding]
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Shorthand for [MediaQuery.of(context).padding]
  EdgeInsets get padding => MediaQuery.of(this).padding;

  /// Shorthand for [MediaQuery.of(context).padding]
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Shorthand for [MediaQuery.of(context).viewPadding]
  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  /// Shorthand for [MediaQuery.of(context).viewInsets]
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  /// Shorthand for [MediaQuery.of(context).orientation]
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Check if device is on landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  /// Check if device is on portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  /// Shorthand for [MediaQuery.of(this).devicePixelRatio]
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// Shorthand for [MediaQuery.of(this).textScaleFactor]
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  /// Shorthand for [MediaQuery.of(this).size.shortestSide]
  double get shortestSide => mediaQuerySize.shortestSide;
}
