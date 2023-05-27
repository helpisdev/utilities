import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// Builds a shimmer effect to indicate loading content.
///
/// The [itemCount] parameter controls the number of shimmering
/// lines displayed.
///
/// ```dart
/// LoadingShimmer(itemCount: 10)
/// ```
///
/// Would display 10 shimmering lines.
class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key, this.itemCount = 8});

  /// Controls the number of shimmering lines displayed.
  final int itemCount;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white38,
          child: ListView.builder(
            shrinkWrap: true,
            prototypeItem: const LoadingIndicator(),
            itemBuilder: (final _, final __) => const LoadingIndicator(),
            itemCount: itemCount,
          ),
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('itemCount', itemCount));
  }
}

/// Builds a loading indicator row with shimmering lines.
///
/// The [LoadingLine] widgets have the following parameters:
///
/// [LoadingLine.width] - The width of the line. Default is double.infinity.
/// [LoadingLine.height] - The height of the line. Default is 12.
/// [LoadingLine.gap] - The vertical gap between lines. Default is 4.
///
/// For example:
/// ```dart
/// LoadingIndicator(
///   children: [
///     LoadingLine(width: 40, height: 8, gap: 2),
///     LoadingLine(width: 20, height: 4, gap: 1),
///   ]
/// )
/// ```
///
/// Would display two shimmering lines with widths of 40 and 20, heights of 8
/// and 4, and gaps of 2 and 1 respectively.
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(final BuildContext context) => const Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LoadingLine(width: 56, height: 56, gap: 8),
            Expanded(
              child: Column(
                children: <Widget>[
                  LoadingLine(),
                  LoadingLine(),
                  LoadingLine(width: 40, height: 8, gap: 2),
                ],
              ),
            ),
          ],
        ),
      );
}

/// Builds a shimmering loading line.
///
/// The [LoadingLine] widget has the following parameters:
///
/// [width] - The width of the line. Default is double.infinity.
/// [height] - The height of the line. Default is 12.
/// [gap] - The vertical gap between lines. Default is 4.
///
/// For example:
/// ```dart
/// LoadingLine(width: 40, height: 8, gap: 2)
/// ```
///
/// Would display a shimmering line with a width of 40, height of 8,
/// and a gap of 2.
class LoadingLine extends StatelessWidget {
  const LoadingLine({
    this.width = double.infinity,
    this.height = 12,
    this.gap = 4,
    super.key,
  });

  /// The width of the line. Default is double.infinity.
  final double width;

  /// The height of the line. Default is 12.
  final double height;

  /// The vertical gap between lines. Default is 4.
  final double gap;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: gap),
        child: Container(width: width, height: height, color: Colors.white),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DoubleProperty('width', width))
      ..add(DoubleProperty('height', height))
      ..add(DoubleProperty('gap', gap));
  }
}
