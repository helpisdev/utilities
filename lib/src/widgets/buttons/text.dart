import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resizable_text/resizable_text.dart';
import 'package:screen_size_provider/screen_size_provider.dart';

import 'button_group.dart';
import 'utils.dart';

class StyledTextButton extends TextButton with StyledButton {
  StyledTextButton({
    required super.child,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.clipBehavior,
    super.statesController,
    final ButtonStyle? style,
    super.key,
  }) : super(style: styleFrom().reverseMerge(style));

  /// Creates an elevated button from a pair of widgets that serve as the
  /// button's [icon] and [label].
  ///
  /// The icon and label are arranged in a row and padded by 12 logical pixels
  /// at the start, and 16 at the end, with an 8 pixel gap in between.
  ///
  /// The [icon] and [label] arguments must not be null.
  factory StyledTextButton.icon({
    required final VoidCallback? onPressed,
    required final Widget icon,
    required final Widget label,
    final Key? key,
    final VoidCallback? onLongPress,
    final ValueChanged<bool>? onHover,
    final ValueChanged<bool>? onFocusChange,
    final ButtonStyle? style,
    final FocusNode? focusNode,
    final bool? autofocus,
    final Clip? clipBehavior,
    final MaterialStatesController? statesController,
  }) = _StyledTextButtonWithIcon;

  /// A static convenience method that constructs an elevated button
  /// [ButtonStyle] given simple values.
  ///
  /// The [foregroundColor] and [disabledForegroundColor] colors are used
  /// to create a [MaterialStateProperty] [ButtonStyle.foregroundColor], and
  /// a derived [ButtonStyle.overlayColor].
  ///
  /// The [backgroundColor] and [disabledBackgroundColor] colors are
  /// used to create a [MaterialStateProperty] [ButtonStyle.backgroundColor].
  ///
  /// The button's elevations are defined relative to the [elevation]
  /// parameter. The disabled elevation is the same as the parameter
  /// value, [elevation] + 2 is used when the button is hovered
  /// or focused, and elevation + 6 is used when the button is pressed.
  ///
  /// Similarly, the [enabledMouseCursor] and [disabledMouseCursor]
  /// parameters are used to construct [ButtonStyle].mouseCursor.
  ///
  /// All of the other parameters are either used directly or used to
  /// create a [MaterialStateProperty] with a single value for all
  /// states.
  ///
  /// All parameters default to null, by default this method returns
  /// a [ButtonStyle] that doesn't override anything.
  ///
  /// For example, to override the default text and icon colors for a
  /// [TextButton], as well as its overlay color, with all of the
  /// standard opacity adjustments for the pressed, focused, and
  /// hovered states, one could write:
  ///
  /// ```dart
  /// TextButton(
  ///   style: TextButton.styleFrom(foregroundColor: Colors.green),
  ///   onPressed: () {
  ///     // ...
  ///   },
  ///   child: const Text('Jump'),
  /// ),
  /// ```
  ///
  /// And to change the fill color:
  ///
  /// ```dart
  /// TextButton(
  ///   style: TextButton.styleFrom(backgroundColor: Colors.green),
  ///   onPressed: () {
  ///     // ...
  ///   },
  ///   child: const Text('Meow'),
  /// ),
  /// ```
  ///
  static ButtonStyle styleFrom({
    final Color? foregroundColor,
    final Color? backgroundColor,
    final Color? disabledForegroundColor,
    final Color? disabledBackgroundColor,
    final Color? shadowColor,
    final Color? surfaceTintColor,
    final double? elevation,
    final TextStyle? textStyle,
    final EdgeInsetsGeometry? padding,
    final Size? minimumSize,
    final Size? fixedSize,
    final Size? maximumSize,
    final BorderSide? side,
    final OutlinedBorder? shape,
    final MouseCursor? enabledMouseCursor,
    final MouseCursor? disabledMouseCursor,
    final VisualDensity? visualDensity,
    final MaterialTapTargetSize? tapTargetSize,
    final Duration? animationDuration,
    final bool? enableFeedback,
    final AlignmentGeometry? alignment,
    final InteractiveInkFeatureFactory? splashFactory,
    @Deprecated('Use backgroundColor instead. '
        'This feature was deprecated after v3.1.0.')
    final Color? primary,
    @Deprecated('Use foregroundColor instead. '
        'This feature was deprecated after v3.1.0.')
    final Color? onPrimary,
    @Deprecated(
        'Use disabledForegroundColor and disabledBackgroundColor instead. '
        'This feature was deprecated after v3.1.0.')
    final Color? onSurface,
  }) {
    final Size deviceSize = ScreenSizeProvider.size;
    return TextButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      textStyle: textStyle ??
          const TextStyle(
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
          ),
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: deviceSize.width * 1.25 / 100,
            vertical: deviceSize.width * 0.5 / 100,
          ),
      minimumSize: minimumSize,
      fixedSize: fixedSize,
      maximumSize: maximumSize,
      side: side,
      shape: shape,
      enabledMouseCursor: enabledMouseCursor,
      disabledMouseCursor: disabledMouseCursor,
      visualDensity: visualDensity,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment,
      splashFactory: splashFactory,
    );
  }
}

class _StyledTextButtonWithIcon extends StyledTextButton {
  _StyledTextButtonWithIcon({
    required super.onPressed,
    required final Widget icon,
    required final Widget label,
    super.key,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    final ButtonStyle? style,
    final bool? autofocus,
    final Clip? clipBehavior,
    super.statesController,
  }) : super(
          style: StyledTextButton.styleFrom().reverseMerge(style),
          autofocus: autofocus ?? false,
          clipBehavior: clipBehavior ?? Clip.none,
          child: StyledButtonWithIconChild(icon: icon, label: label),
        );

  @override
  ButtonStyle defaultStyleOf(final BuildContext context) {
    final EdgeInsetsGeometry scaledPadding = ButtonStyleButton.scaledPadding(
      const EdgeInsets.all(8),
      const EdgeInsets.symmetric(horizontal: 4),
      const EdgeInsets.symmetric(horizontal: 4),
      MediaQuery.maybeOf(context)?.textScaleFactor ?? 1,
    );
    return super.defaultStyleOf(context).copyWith(
          padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(scaledPadding),
        );
  }
}

/// Default text button with padding and text styling.
class DefaultTextButton extends StatelessWidget {
  /// Constructs a [StyledTextButton], with a [BodyMedium] text component of
  /// provided [label]. An optional [icon] can be provided, in which case
  /// [StyledTextButton.icon] will be called. Extra styling can be supplied
  /// by specifying a [style].
  const DefaultTextButton({
    required this.onPressed,
    required this.label,
    this.icon,
    this.style,
    super.key,
  });

  /// Button click callback.
  final VoidCallback onPressed;

  /// Button's text label.
  final String label;

  /// Optional button icon.
  final Icon? icon;

  /// Optional button style.
  final ButtonStyle? style;

  @override
  Widget build(final BuildContext context) {
    final BodyMedium text = BodyMedium(
      label,
      maxLines: 3,
      textAlign: TextAlign.center,
    );
    final ButtonStyle buttonStyle = StyledTextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(4),
        ),
      ),
    ).reverseMerge(style);
    return icon != null
        ? StyledTextButton.icon(
            onPressed: onPressed,
            icon: icon!,
            label: text,
            style: buttonStyle,
          )
        : StyledTextButton(
            onPressed: onPressed,
            style: buttonStyle,
            child: text,
          );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<Icon?>('icon', icon))
      ..add(StringProperty('label', label))
      ..add(ObjectFlagProperty<VoidCallback>.has('onPressed', onPressed))
      ..add(DiagnosticsProperty<ButtonStyle?>('style', style));
  }
}
