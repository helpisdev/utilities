import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

extension MergeWithDefaultStylePriority on ButtonStyle {
  /// Returns a copy of this ButtonStyle where the non-null fields in [style]
  /// have replaced the corresponding fields in this ButtonStyle.
  ///
  /// In other words, all non-null fields of [style] are used to fill in the
  /// corresponding fields in this ButtonStyle.
  ButtonStyle reverseMerge(final ButtonStyle? style) {
    if (style == null) {
      return this;
    }
    return copyWith(
      textStyle: style.textStyle ?? textStyle,
      backgroundColor: style.backgroundColor ?? backgroundColor,
      foregroundColor: style.foregroundColor ?? foregroundColor,
      overlayColor: style.overlayColor ?? overlayColor,
      shadowColor: style.shadowColor ?? shadowColor,
      surfaceTintColor: style.surfaceTintColor ?? surfaceTintColor,
      elevation: style.elevation ?? elevation,
      padding: style.padding ?? padding,
      minimumSize: style.minimumSize ?? minimumSize,
      fixedSize: style.fixedSize ?? fixedSize,
      maximumSize: style.maximumSize ?? maximumSize,
      side: style.side ?? side,
      shape: style.shape ?? shape,
      mouseCursor: style.mouseCursor ?? mouseCursor,
      visualDensity: style.visualDensity ?? visualDensity,
      tapTargetSize: style.tapTargetSize ?? tapTargetSize,
      animationDuration: style.animationDuration ?? animationDuration,
      enableFeedback: style.enableFeedback ?? enableFeedback,
      alignment: style.alignment ?? alignment,
      splashFactory: style.splashFactory ?? splashFactory,
    );
  }
}

// Copied from flutter/material.dart
/// Creates a [Row] containing an [icon] and [label] with a scaled gap.
///
/// The [icon] and [label] arguments must not be null.
///
/// The [icon] is displayed first, followed by a [SizedBox] with width `gap`,
/// and then the [label].
///
/// `gap` is calculated based on the [MediaQueryData.textScaleFactor] of the
/// provided [BuildContext]. If the scale factor is less than or equal to 1,
/// `gap` is 8.0. Otherwise, `gap` is interpolated between 8.0 and 4.0 based
/// on the scale factor.
///
/// For example, with a scale factor of 1.5, `gap` would be 6.0.
class StyledButtonWithIconChild extends StatelessWidget {
  const StyledButtonWithIconChild({
    required this.label,
    required this.icon,
    super.key,
  });

  final Widget label;
  final Widget icon;

  @override
  Widget build(final BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap = scale <= 1 ? 8 : lerpDouble(8, 4, min(scale - 1, 1))!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[icon, SizedBox(width: gap), Flexible(child: label)],
    );
  }
}
