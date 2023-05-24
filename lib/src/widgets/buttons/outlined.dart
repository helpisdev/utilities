import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../screen_width_provider.dart';
import '../typography/body/body_medium.dart';
import '../typography/resizable/resizable_text_style.dart';
import 'button_group.dart';
import 'utils.dart';

class StyledOutlinedButton extends OutlinedButton with StyledButton {
  StyledOutlinedButton({
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

  /// Create an elevated button from a pair of widgets that serve as the
  /// button's [icon] and [label].
  ///
  /// The icon and label are arranged in a row and padded by 12 logical pixels
  /// at the start, and 16 at the end, with an 8 pixel gap in between.
  ///
  /// The [icon] and [label] arguments must not be null.
  factory StyledOutlinedButton.icon({
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
  }) = _StyledOutlinedButtonWithIcon;

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
  /// [OutlinedButton], as well as its overlay color, with all of the
  /// standard opacity adjustments for the pressed, focused, and
  /// hovered states, one could write:
  ///
  /// ```dart
  /// OutlinedButton(
  ///   style: OutlinedButton.styleFrom(foregroundColor: Colors.green),
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
  /// OutlinedButton(
  ///   style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
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
    return OutlinedButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      textStyle: textStyle,
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: deviceSize.width * 1.5 / 100,
            vertical: deviceSize.width * 0.9 / 100,
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

class _StyledOutlinedButtonWithIcon extends StyledOutlinedButton {
  _StyledOutlinedButtonWithIcon({
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
          style: StyledOutlinedButton.styleFrom().reverseMerge(style),
          autofocus: autofocus ?? false,
          clipBehavior: clipBehavior ?? Clip.none,
          child: StyledButtonWithIconChild(icon: icon, label: label),
        );
}

/// Default text button with padding and text styling.
class DefaultOutlinedButton extends StatelessWidget {
  /// Constructs a [StyledOutlinedButton], with a [BodyMedium] text component of
  /// provided [label]. An optional [icon] can be provided, in which case
  /// [StyledOutlinedButton.icon] will be called. Extra styling can be supplied
  /// by specifying a [style].
  const DefaultOutlinedButton({
    required this.onPressed,
    required this.label,
    this.icon,
    this.style,
    this.disabled = false,
    super.key,
  });

  /// Button click callback.
  final VoidCallback onPressed;

  /// Button's text label.
  final String label;

  /// Optional button icon.
  final Icon? icon;

  /// Whether or not this button is disabled. If disabled the [onPressed] cannot
  /// be triggered.
  final bool disabled;

  /// Optional button style.
  final ButtonStyle? style;

  @override
  Widget build(final BuildContext context) {
    final BodyMedium text = BodyMedium(
      label,
      maxLines: 3,
      textAlign: TextAlign.center,
      style: ResizableTextStyle(
        color: Theme.of(context).primaryColor,
      ).merge(
        style?.textStyle?.resolve(<MaterialState>{}),
      ),
    );
    final ButtonStyle buttonStyle = StyledOutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2, color: Theme.of(context).primaryColor),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(4),
        ),
      ),
      backgroundColor: disabled ? Colors.black12 : null,
    ).reverseMerge(style);
    return icon != null
        ? StyledOutlinedButton.icon(
            onPressed: disabled ? () {} : onPressed,
            icon: icon!,
            label: text,
            style: buttonStyle,
          )
        : StyledOutlinedButton(
            onPressed: disabled ? () {} : onPressed,
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
      ..add(DiagnosticsProperty<ButtonStyle?>('style', style))
      ..add(DiagnosticsProperty<bool>('disabled', disabled));
  }
}
