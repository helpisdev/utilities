import 'dart:async';
import 'dart:convert' show base64Decode;
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart' show getTemporaryDirectory;
import 'package:universal_io/io.dart' hide Platform;
import '../../utilities.dart';

// TODO(helpisdev): Improve the API:
//   - Add custom placeholder
//   - Add custom errorWidget
//   - Add custom imageBuilder
//   - Add caching dimensions
//   - Add option to pass bytes directly
//   - Cache image on web

/// A widget that displays an image from a base64 encoded string.
///
/// The [source] parameter is the base64 encoded string of the image data.
/// The [constraints] parameter specifies the size constraints for the image.
/// The optional [edit] parameter is a callback that can be used to modify the
/// image widget.
class Base64Image extends StatelessWidget {
  const Base64Image({
    required this.source,
    required this.constraints,
    super.key,
    this.edit,
  });

  /// The base64 encoded string of the image data.
  final FutureOr<String> source;

  /// Specifies the size constraints for the image.
  final BoxConstraints constraints;

  /// A callback that can be used to modify the image widget.
  final EditImageCallback? edit;

  @override
  Widget build(final BuildContext context) => FutureBuilder<String>(
        future: Future<String>.value(source),
        builder: (
          final BuildContext context,
          final AsyncSnapshot<String> snapshot,
        ) {
          if (!snapshot.hasData) {
            return LoadingImageIndicator(constraints: constraints);
          }
          final String resolvedSource = snapshot.data!;
          final String id = resolvedSource.sha256asString;
          return FutureBuilder<String?>(
            future: Future<String?>.microtask(
              () async {
                if (!Platform.isWeb) {
                  final String path = (await getTemporaryDirectory()).path;
                  return join(path, 'cache', 'images', id);
                }
                return null;
              },
            ),
            builder: (
              final BuildContext context,
              final AsyncSnapshot<String?> snapshot,
            ) {
              late final Widget image;
              if (!Platform.isWeb) {
                if (!snapshot.hasData) {
                  return LoadingImageIndicator(constraints: constraints);
                }
                final File imageFile = File(snapshot.data!);

                if (!imageFile.existsSync()) {
                  imageFile
                    ..createSync(recursive: true)
                    ..writeAsBytesSync(base64Decode(resolvedSource));
                }
                image = Image.file(imageFile);
              } else {
                image = Image.memory(
                  base64Decode(resolvedSource),
                  cacheWidth: constraints.maxWidth.toInt(),
                  cacheHeight: constraints.maxHeight.toInt(),
                );
              }

              return ConstrainedBox(
                constraints: constraints,
                child: edit?.call(image) ?? image,
              );
            },
          );
        },
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<Constraints>('constraints', constraints))
      ..add(ObjectFlagProperty<EditImageCallback?>.has('edit', edit))
      ..add(DiagnosticsProperty<FutureOr<String>>('source', source));
  }
}

class LoadingImageIndicator extends StatelessWidget {
  const LoadingImageIndicator({
    required this.constraints,
    super.key,
  });

  final BoxConstraints constraints;

  @override
  Widget build(final BuildContext context) => ConstrainedBox(
        constraints: constraints,
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: CircularProgressIndicator.adaptive(),
            ),
          ],
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<BoxConstraints>('constraints', constraints),
    );
  }
}

/// A callback that can be used to modify the image widget.
typedef EditImageCallback = Widget Function(Widget image);
