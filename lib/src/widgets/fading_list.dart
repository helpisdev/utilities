import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Creates a [FadingListView] which fades in a [ListView] from transparent.
///
/// The [list] parameter is required and is the [ListView] to fade in.
///
/// The [breakpoints] parameter is optional and defaults to
/// <double>[0, 0.05, 1]. It controls the stops of the [LinearGradient] used to
/// fade in the [list]. The first stop is transparent, the second is
/// transparent, and the third is [Theme.of(context).colorScheme.background].
///
/// For example:
/// ```dart
/// FadingListView(
///   list: ListView(children: [...]),
///   breakpoints: [0, 0.2, 0.8, 1],  // Fade in slower
/// )
/// ```
///
/// The [FadingListView] uses a [ShaderMask] with a [BlendMode.dstOut] to fade
/// in the [list].
class FadingListView extends StatelessWidget {
  const FadingListView({
    required this.list,
    super.key,
    this.breakpoints = const <double>[0, 0.05, 1],
  });

  /// The [ListView] to fade in.
  final ListView list;

  /// The stops of the [LinearGradient] used to fade in the [list].
  final List<double> breakpoints;

  @override
  Widget build(final BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ShaderMask(
            shaderCallback: (final Rect rect) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.transparent,
                Colors.transparent,
                Theme.of(context).colorScheme.background,
              ],
              stops: breakpoints,
            ).createShader(rect),
            blendMode: BlendMode.dstOut,
            child: list,
          ),
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<double>('breakpoints', breakpoints));
  }
}
