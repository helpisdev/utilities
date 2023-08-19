import 'dart:math';

import 'package:breakpoints_utilities/breakpoints_utilities.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:resizable_text/resizable_text.dart';
import 'package:screen_size_provider/screen_size_provider.dart';

import '../extensions/context.dart';

/// A snack bar content widget.
///
/// Some buttons use [MaterialLocalizations], so the
/// [GlobalMaterialLocalizations] must be included in the list of localization
/// app delegates.
///
/// Parameters:
///   - [title] -> The snack bar title.
///   - [message] -> The snack bar message.
///   - [kind] -> The [SnackBarKind] which determines the icon and color of the
///     snack bar based on the intended usage.
///   - [scaffoldMessengerKey] -> The [GlobalKey] of the
///     [ScaffoldMessengerState] to show/hide the current snack bar.
///   - [theme] -> The [SnackBarContentTheme] which contains the styling for
///     this snack bar.
///   - [onTap] -> A callback invoked when the snack bar is tapped.
///
/// Functionality:
/// - Displays a snack bar with the given title, message, and styling.
/// - Hides the current snack bar when tapped.
class SnackBarContent extends StatelessWidget {
  const SnackBarContent({
    required this.title,
    required this.message,
    required this.kind,
    required this.scaffoldMessengerKey,
    required this.theme,
    required this.onTap,
    super.key,
  });

  /// The [GlobalKey] of the [ScaffoldMessengerState] to show/hide the current
  /// snack bar.
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  /// The snack bar title.
  final String title;

  /// The snack bar message.
  final String message;

  /// The [SnackBarKind] which determines the icon and color of the snack bar
  /// based on the intended usage.
  final SnackBarKind kind;

  /// The [SnackBarContentTheme] which contains the styling for this snack bar.
  final SnackBarContentTheme theme;

  /// A callback invoked when the snack bar is tapped.
  final VoidCallback? onTap;

  @override
  Widget build(final BuildContext context) => ScreenSizeProvider(
        child: GestureDetector(
          onTap: onTap ?? _hideSnackbar,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              _SnackBarContainer(
                theme: theme,
                kind: kind,
                title: title,
                message: message,
                messagePlacement: theme.messagePlacement,
              ),
              Positioned(
                top: 1.5,
                right: 1.5,
                child: _SnackBarIndicator(theme: theme, kind: kind),
              ),
            ],
          ),
        ),
      );

  void _hideSnackbar() =>
      scaffoldMessengerKey.currentState?.hideCurrentSnackBar();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('title', title))
      ..add(StringProperty('message', message))
      ..add(EnumProperty<SnackBarKind>('type', kind))
      ..add(
        DiagnosticsProperty<GlobalKey<ScaffoldMessengerState>>(
          'scaffoldMessengerKey',
          scaffoldMessengerKey,
        ),
      )
      ..add(DiagnosticsProperty<SnackBarContentTheme>('theme', theme))
      ..add(ObjectFlagProperty<VoidCallback?>.has('onTap', onTap));
  }
}

/// Defines the indicator shown on the snack bar.
///
/// The indicator shows an icon to represent the [SnackBarKind]. It can be
/// customized using the [SnackBarContentTheme.indicator] property.
///
/// * [theme] defines the indicator theme which can customize the indicator.
/// * [kind] is the [SnackBarKind] which determines the indicator icon or color.
class _SnackBarIndicator extends StatelessWidget {
  const _SnackBarIndicator({
    required this.theme,
    required this.kind,
  });

  /// Defines the indicator theme which can customize the indicator.
  final SnackBarContentTheme theme;

  /// The [SnackBarKind] which determines the indicator icon or color.
  final SnackBarKind kind;

  @override
  Widget build(final BuildContext context) {
    final Visibility indicator = Visibility(
      visible: theme.indicator.showIcon,
      child: kind._icon(context).withColor(theme.indicator.color),
    );
    return theme.indicator.customIndicator ??
        Visibility(
          visible: theme.indicator.showContainer,
          replacement: indicator,
          child: Container(
            width: 65,
            height: 65,
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 7.5, right: 7.5),
            decoration: BoxDecoration(
              color: theme.indicator.containerColor,
              border: const Border(),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(75),
                topRight: Radius.circular(20),
              ),
            ),
            child: indicator,
          ),
        );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(EnumProperty<SnackBarKind>('kind', kind))
      ..add(DiagnosticsProperty<SnackBarContentTheme>('theme', theme));
  }
}

/// A container for the snack bar content.
///
/// * [theme] defines the snack bar theme which can customize the container.
/// * [kind] is the [SnackBarKind] which determines the container color.
/// * [title] is the snack bar title.
/// * [message] is the snack bar message.
/// * [messagePlacement] defines how to place the title and message.
class _SnackBarContainer extends StatelessWidget {
  const _SnackBarContainer({
    required this.theme,
    required this.kind,
    required this.title,
    required this.message,
    required this.messagePlacement,
  });

  /// Defines the snack bar theme which can customize the container.
  final SnackBarContentTheme theme;

  /// Is the [SnackBarKind] which determines the container color.
  final SnackBarKind kind;

  /// Is the snack bar title.
  final String title;

  /// Is the snack bar message.
  final String message;

  /// Defines how to place the title and message.
  final SnackBarMessagePlacement messagePlacement;

  @override
  Widget build(final BuildContext context) {
    final bool isTablet = PredefinedBreakpoint.tablet.isActive(context);
    final double width = context.widthTransformer(
      percentage: isTablet ? 2.5 : 1.875,
    );
    final double height = context.heightTransformer(percentage: 22.5);
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: theme.container.padding ?? EdgeInsets.only(left: width),
            width: theme.container.width,
            height: theme.container.height ?? min(height, 150),
            decoration: BoxDecoration(
              color: theme.container.color ?? kind._color,
              borderRadius: theme.border.radius,
              border: theme.border.border,
            ),
            child: _SnackbarMessage(
              title: title,
              message: message,
              messagePlacement: messagePlacement,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(EnumProperty<SnackBarKind>('kind', kind))
      ..add(StringProperty('title', title))
      ..add(StringProperty('message', message))
      ..add(
        DiagnosticsProperty<SnackBarMessagePlacement>(
          'messagePlacement',
          messagePlacement,
        ),
      )
      ..add(DiagnosticsProperty<SnackBarContentTheme>('theme', theme));
  }
}

/// Builds a column with the title and message aligned according to
/// [messagePlacement].
///
/// The title is displayed using a [H2] widget and the message uses a
/// [BodyNormal] widget.
///
/// Parameters:
///
/// - [title] -> The snack bar title.
/// - [message] -> The snack bar message.
/// - [messagePlacement] -> How to align the title and message.
class _SnackbarMessage extends StatelessWidget {
  const _SnackbarMessage({
    required this.title,
    required this.message,
    required this.messagePlacement,
  });

  /// The snack bar title.
  final String title;

  /// The snack bar message.
  final String message;

  /// How to align the title and message.
  final SnackBarMessagePlacement messagePlacement;

  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: messagePlacement.xAxisAlignment,
        mainAxisAlignment: messagePlacement.yAxisAlignment,
        children: <Widget>[
          Flexible(child: H3(title, maxLines: 2)),
          Flexible(
            child: BodyNormal(
              message,
              maxLines: 3,
              style: BodyNormal.defaultStyle.copyWith(height: 1.15),
            ),
          ),
        ],
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('title', title))
      ..add(StringProperty('message', message))
      ..add(
        DiagnosticsProperty<SnackBarMessagePlacement>(
          'messagePlacement',
          messagePlacement,
        ),
      );
  }
}

/// Defines the different kinds of snack bars based on common intented usages.
enum SnackBarKind {
  /// Snack bar intended for informational usage.
  info,

  /// Snack bar intended to be used to show that something went wrong.
  failure,

  /// Snack bar intended for indicating the success of an operation.
  success,

  /// Snack bar intended for displaying warnings.
  warning;

  /// Returns an [Icon] widget with the appropriate icon for the snack bar kind.
  /// It uses the [MaterialLocalizations] to get the semantic label for the
  /// icon.
  Icon _icon(final BuildContext ctx) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(ctx);
    return Icon(
      switch (this) {
        SnackBarKind.info => Icons.info_rounded,
        SnackBarKind.failure => Icons.close_rounded,
        SnackBarKind.success => Icons.check_rounded,
        SnackBarKind.warning => Icons.warning_rounded,
      },
      size: 36,
      semanticLabel: switch (this) {
        SnackBarKind.info => localizations.dialogLabel,
        SnackBarKind.failure => localizations.closeButtonLabel,
        SnackBarKind.success => localizations.okButtonLabel,
        SnackBarKind.warning => localizations.alertDialogLabel,
      },
      color: _color,
    );
  }

  /// Returns the color associated with the snack bar kind.
  Color get _color => switch (this) {
        SnackBarKind.info => _ColorName.infoBlue,
        SnackBarKind.failure => _ColorName.failureRed,
        SnackBarKind.success => _ColorName.successGreen,
        SnackBarKind.warning => _ColorName.warningYellow,
      }
          .color;
}

/// Defines the color palette used for the different kinds of snack bars.
enum _ColorName {
  /// Blue color used for [SnackBarKind.info] snack bars.
  infoBlue(Color(0xff0063f7)),

  /// Red color used for [SnackBarKind.failure] snack bars.
  failureRed(Color(0xffff3b3b)),

  /// Green color used for [SnackBarKind.success] snack bars.
  successGreen(Color(0xff06c270)),

  /// Yellow color used for [SnackBarKind.warning] snack bars.
  warningYellow(Color(0xffffcc00));

  const _ColorName(this.color);

  /// Snack bar color.
  final Color color;
}

/// Defines the alignment of the snack bar message.
///
/// The [yAxisAlignment] defines the vertical alignment of the message. It
/// defaults to [MainAxisAlignment.center].
///
/// The [xAxisAlignment] defines the horizontal alignment of the message. It
/// defaults to [CrossAxisAlignment.start].
class SnackBarMessagePlacement {
  const SnackBarMessagePlacement([
    this.yAxisAlignment = MainAxisAlignment.center,
    this.xAxisAlignment = CrossAxisAlignment.start,
  ]);

  /// The [yAxisAlignment] defines the vertical alignment of the message. It
  /// defaults to [MainAxisAlignment.center].
  final MainAxisAlignment yAxisAlignment;

  /// The [xAxisAlignment] defines the horizontal alignment of the message. It
  /// defaults to [CrossAxisAlignment.start].
  final CrossAxisAlignment xAxisAlignment;
}

/// Defines the theme for the snack bar content.
///
/// The [border] defines the border of the snack bar content. It defaults to a
/// border with a width of 2 and a circular radius of 20.
///
/// The [indicator] defines the indicator shown at the start of the snack bar.
/// It can be used to show an icon and container based on the [SnackBarKind].
/// It defaults to showing a question mark icon with a white container.
///
/// The [container] defines the container holding the snack bar content. It can
/// be used to set the width, height, color and padding of the container.
///
/// The [messagePlacement] defines the alignment of the snack bar message. It
/// defaults to centering the message vertically and starting it at the start
/// horizontally.
class SnackBarContentTheme {
  const SnackBarContentTheme({
    this.border = const SnackBarBorderTheme(),
    this.indicator = const SnackBarIndicator(),
    this.container = const SnackBarContainerTheme(),
    this.messagePlacement = const SnackBarMessagePlacement(),
  });

  /// The [border] defines the border of the snack bar content. It defaults to a
  /// border with a width of 2 and a circular radius of 20.
  final SnackBarBorderTheme border;

  /// The [indicator] defines the indicator shown at the start of the snack bar.
  /// It can be used to show an icon and container based on the [SnackBarKind].
  /// It defaults to showing a question mark icon with a white container.
  final SnackBarIndicator indicator;

  /// The [container] defines the container holding the snack bar content. It
  /// can be used to set the width, height, color and padding of the container.
  final SnackBarContainerTheme container;

  /// The [messagePlacement] defines the alignment of the snack bar message. It
  /// defaults to centering the message vertically and starting it at the start
  /// horizontally.
  final SnackBarMessagePlacement messagePlacement;
}

/// Defines the border of the snack bar content.
class SnackBarBorderTheme {
  const SnackBarBorderTheme({
    this.border = const Border.fromBorderSide(BorderSide(width: 2)),
    this.radius = const BorderRadius.all(Radius.circular(20)),
  });

  /// The [border] parameter defines the border around the snack bar content.
  /// It defaults to a border with a width of 2.
  final Border border;

  /// The [radius] defines the border radius of the snack bar content.
  /// It defaults to a circular radius of 20.
  final BorderRadius radius;
}

/// Defines the container holding the snack bar content. It can be used to set
/// the width, height, color and padding of the container.
class SnackBarContainerTheme {
  const SnackBarContainerTheme({
    this.width,
    this.height,
    this.color,
    this.padding,
  });

  /// The [width] parameter defines the width of the snack bar container.
  final double? width;

  /// The [height] parameter defines the height of the snack bar container.
  /// If unspecified, it is computed based on screen height and device type.
  final double? height;

  /// The [color] parameter defines the background color of the snack bar
  /// container.
  final Color? color;

  /// The [padding] parameter defines the padding around the snack bar content
  /// within the container.
  final EdgeInsets? padding;
}

/// Defines the indicator shown on the right side of the snack bar.
class SnackBarIndicator {
  const SnackBarIndicator({
    this.color,
    this.customIndicator,
    this.showIcon = true,
    this.containerColor = Colors.white,
    this.showContainer = true,
  });

  /// The [color] parameter defines the color of the indicator icon.
  /// If unspecified, the color is derived from the [SnackBarKind].
  final Color? color;

  /// The [customIndicator] parameter defines a custom widget to be shown
  /// instead of the default indicator icon.
  final Widget? customIndicator;

  /// The [showIcon] parameter determines whether to show an indicator icon. It
  /// defaults to `true`.
  final bool showIcon;

  /// The [containerColor] defines the background color of the indicator
  /// container. It defaults to [Colors.white].
  final Color containerColor;

  /// The [showContainer] parameter determines whether to show the container
  /// behind the indicator. It defaults to `true`.
  final bool showContainer;
}

/// Defines the theme for snack bar widgets.
///
/// The [animation] parameter defines the animation to use when showing and
/// dismissing the snack bar.
///
/// The [clipBehavior] parameter defines how the snack bar should clip its
/// content. Defaults to [Clip.hardEdge].
///
/// The [dismissDirection] parameter defines the direction in which the snack
/// bar will be dismissed. Defaults to [DismissDirection.down].
///
/// The [duration] parameter defines the duration for which the snack bar will
/// be shown. Defaults to 10 seconds.
///
/// The [margin] parameter defines the margin around the snack bar.
///
/// The [padding] parameter defines the padding around the snack bar content.
///
/// The [elevation] parameter defines the z-position of the snack bar. Defaults
/// to 0.
///
/// The [width] parameter defines the width of the snack bar container.
///
/// The [backgroundColor] parameter defines the background color of the snack
/// bar container. Defaults to [Colors.transparent].
///
/// The [behavior] parameter defines how the snack bar should behave. Defaults
/// to [SnackBarBehavior.fixed].
///
/// The [shape] parameter defines the shape of the snack bar container. Defaults
/// to a rounded rectangle with a radius of 6.
class SnackBarTheme {
  const SnackBarTheme({
    this.animation,
    this.clipBehavior = Clip.hardEdge,
    this.dismissDirection = DismissDirection.down,
    this.duration = const Duration(seconds: 10),
    this.margin,
    this.padding,
    this.elevation = 0,
    this.width,
    this.backgroundColor = Colors.transparent,
    this.behavior = SnackBarBehavior.fixed,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
  });

  /// The [animation] parameter defines the animation to use when showing and
  /// dismissing the snack bar.
  final Animation<double>? animation;

  /// The [clipBehavior] parameter defines how the snack bar should clip its
  /// content. Defaults to [Clip.hardEdge].
  final Clip clipBehavior;

  /// The [backgroundColor] parameter defines the background color of the snack
  /// bar container. Defaults to [Colors.transparent].
  final Color backgroundColor;

  /// The [dismissDirection] parameter defines the direction in which the snack
  /// bar will be dismissed. Defaults to [DismissDirection.down].
  final DismissDirection dismissDirection;

  /// The [duration] parameter defines the duration for which the snack bar will
  /// be shown. Defaults to 10 seconds.
  final Duration duration;

  /// The [margin] parameter defines the margin around the snack bar.
  final EdgeInsets? margin;

  /// The [padding] parameter defines the padding around the snack bar content.
  final EdgeInsets? padding;

  /// The [shape] parameter defines the shape of the snack bar container.
  /// Defaults to a rounded rectangle with a radius of 6.
  final ShapeBorder shape;

  /// The [behavior] parameter defines how the snack bar should behave. Defaults
  /// to [SnackBarBehavior.fixed].
  final SnackBarBehavior behavior;

  /// The [elevation] parameter defines the z-position of the snack bar.
  /// Defaults to 0.
  final double elevation;

  /// The [width] parameter defines the width of the snack bar container.
  final double? width;
}

/// Displays a snack bar with the provided [title], [message], and [kind].
///
/// The [key] parameter defines the scaffold messenger key used to show the
/// snack bar.
///
/// The [title] parameter defines the snack bar title. Defaults to an empty
/// string.
///
/// The [message] parameter defines the snack bar message. Defaults to an empty
/// string.
///
/// The [kind] parameter defines the snack bar kind. Defaults to
/// [SnackBarKind.info].
///
/// The [action] parameter defines an optional action for the snack bar.
///
/// The [onVisible] parameter defines an optional callback for when the snack
/// bar becomes visible.
///
/// The [onTap] parameter defines an optional callback for when the snack
/// bar is tapped. The default behavior is to hide it.
///
/// The [theme] parameter defines the snack bar theme. Defaults to
/// [SnackBarTheme].
///
/// The [contentTheme] parameter defines the snack bar content theme. Defaults
/// to [SnackBarContentTheme].
void snackBar(
  final GlobalKey<ScaffoldMessengerState> key, {
  final String title = '',
  final String message = '',
  final SnackBarKind kind = SnackBarKind.info,
  final SnackBarAction? action,
  final VoidCallback? onVisible,
  final VoidCallback? onTap,
  final SnackBarTheme theme = const SnackBarTheme(),
  final SnackBarContentTheme contentTheme = const SnackBarContentTheme(),
}) {
  if (key.currentState != null) {
    key.currentState!.showSnackBar(
      SnackBar(
        content: SnackBarContent(
          scaffoldMessengerKey: key,
          title: title,
          message: message,
          kind: kind,
          theme: contentTheme,
          onTap: onTap,
        ),
        backgroundColor: theme.backgroundColor,
        elevation: theme.elevation,
        shape: theme.shape,
        duration: theme.duration,
        behavior: theme.behavior,
        action: action,
        clipBehavior: theme.clipBehavior,
        dismissDirection: theme.dismissDirection,
        onVisible: onVisible,
        animation: theme.animation,
        margin: theme.margin,
        padding: theme.padding,
        width: theme.width,
      ),
    );
  }
}

/// Creates a copy of this icon but with the given color.
extension _IconCopyWithColor on Icon {
  /// Creates a copy of this icon but with the given color.
  ///
  /// If [color] is null, this icon is returned unmodified. Otherwise, a new
  /// icon is returned with the given color.
  ///
  /// The [icon], [key], [size], [fill], [weight], [grade], [opticalSize],
  /// [shadows], [semanticLabel], and [textDirection] parameters are copied from
  /// the current icon.
  Icon withColor(final Color? color) {
    if (color == null) {
      return this;
    }

    return Icon(
      icon,
      key: key,
      size: size,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
      color: color,
      shadows: shadows,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }
}
