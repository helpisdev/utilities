import 'dart:async';
import 'dart:convert' show base64Decode;
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart' show getTemporaryDirectory;
import 'package:universal_io/io.dart';
import 'package:utilities/utilities.dart';

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
          return FutureBuilder<String>(
            future: Future<String>.microtask(
              () async {
                final String path = (await getTemporaryDirectory()).path;
                return join(path, 'cache', 'images', id);
              },
            ),
            builder: (
              final BuildContext context,
              final AsyncSnapshot<String> snapshot,
            ) {
              if (!snapshot.hasData) {
                return LoadingImageIndicator(constraints: constraints);
              }
              final File imageFile = File(snapshot.data!);

              if (!imageFile.existsSync()) {
                imageFile
                  ..createSync(recursive: true)
                  ..writeAsBytesSync(base64Decode(resolvedSource));
              }

              final Widget image = CachedBase64Image(
                source: resolvedSource,
                id: id,
                file: imageFile,
              );
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

/// A widget that displays an image loaded from a [FileImage].
class CachedBase64Image extends StatefulWidget {
  const CachedBase64Image({
    required this.source,
    required this.id,
    required this.file,
    super.key,
  });

  final String source;
  final String id;
  final File file;

  @override
  CachedBase64ImageState createState() => CachedBase64ImageState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('source', source))
      ..add(StringProperty('id', id))
      ..add(DiagnosticsProperty<File>('file', file));
  }
}

class CachedBase64ImageState extends State<CachedBase64Image> {
  /// The [ImageStream] currently being listened to.
  ImageStream? _imageStream;

  /// The current [ImageInfo] object for the image.
  ImageInfo? _imageInfo;

  late final ImageProvider _provider;

  @override
  void initState() {
    super.initState();
    _provider = FileImage(widget.file);
  }

  /// Calls [_getImage] when the widget's dependencies change.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getImage();
  }

  /// Calls [_getImage] when the [CachedBase64Image] widget is updated.
  @override
  void didUpdateWidget(final CachedBase64Image oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.id != oldWidget.id || widget.source != oldWidget.source) {
      _getImage();
    }
  }

  /// Updates [_imageStream] and adds a listener to it.
  void _getImage() {
    final ImageStream? oldImageStream = _imageStream;
    final ImageConfiguration config = createLocalImageConfiguration(context);
    _imageStream = _provider.resolve(config);
    if (_imageStream!.key != oldImageStream?.key) {
      final ImageStreamListener listener = ImageStreamListener(_updateImage);
      oldImageStream?.removeListener(listener);
      _imageStream!.addListener(listener);
    }
  }

  /// Updates the image info and rebuilds the widget.
  void _updateImage(final ImageInfo imageInfo, final bool synchronousCall) {
    setState(() {
      _imageInfo?.dispose();
      _imageInfo = imageInfo;
    });
  }

  /// Disposes the image stream listener and image info.
  @override
  void dispose() {
    _imageStream?.removeListener(ImageStreamListener(_updateImage));
    _imageInfo?.dispose();
    _imageInfo = null;
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => RawImage(
        image: _imageInfo?.image,
        scale: _imageInfo?.scale ?? 1.0,
      );
}
