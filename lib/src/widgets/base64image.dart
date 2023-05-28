import 'dart:convert' show base64Decode;
import 'dart:core';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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
  final String source;

  /// Specifies the size constraints for the image.
  final BoxConstraints constraints;

  /// A callback that can be used to modify the image widget.
  final EditImageCallback? edit;

  /// Decodes the base64 encoded [source] string into a [Uint8List] of raw image
  /// bytes.
  Uint8List get _imageBytes => base64Decode(source);

  /// Generates a SHA-256 hash of the [source] string to use as the image ID.
  String get _id => source.sha256asString;

  /// A [CacheImageProvider] that loads the image from the [Uint8List] of raw
  /// image bytes.
  CacheImageProvider get _provider => CacheImageProvider(_id, _imageBytes);

  /// A [CachedBase64Image] widget that displays the image.
  Widget get _image => CachedBase64Image(provider: _provider);

  /// Gets the temporary directory path and generates a path to save the image
  /// file.
  Future<String> get _tempDir async {
    final String path = (await getTemporaryDirectory()).path;
    return join(path, 'cache', 'images', _id);
  }

  @override
  Widget build(final BuildContext context) => FutureBuilder<String>(
        future: _tempDir,
        builder: (
          final BuildContext context,
          final AsyncSnapshot<String> snapshot,
        ) {
          if (!snapshot.hasData) {
            return ConstrainedBox(
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
          }
          final File image = File(snapshot.data!);
          final bool exists = image.existsSync();
          if (!exists) {
            image
              ..createSync(recursive: true)
              ..writeAsBytesSync(_imageBytes);
          }

          return ConstrainedBox(
            constraints: constraints,
            child: edit?.call(_image) ?? _image,
          );
        },
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('source', source))
      ..add(DiagnosticsProperty<Constraints>('constraints', constraints))
      ..add(ObjectFlagProperty<EditImageCallback?>.has('edit', edit));
  }
}

/// A callback that can be used to modify the image widget.
typedef EditImageCallback = Widget Function(Widget image);

/// A widget that displays an image loaded from a [CacheImageProvider].
///
/// The [provider] parameter is the [CacheImageProvider] that loads the image.
class CachedBase64Image extends StatefulWidget {
  const CachedBase64Image({required this.provider, super.key});

  final CacheImageProvider provider;

  @override
  CachedBase64ImageState createState() => CachedBase64ImageState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<CacheImageProvider>('provider', provider),
    );
  }
}

/// A stateful widget that displays an image loaded from a [CacheImageProvider].
///
/// The [CachedBase64Image.provider] parameter is the [CacheImageProvider] that
/// loads the image.
class CachedBase64ImageState extends State<CachedBase64Image> {
  /// The [ImageStream] currently being listened to.
  ImageStream? _imageStream;

  /// The current [ImageInfo] object for the image.
  ImageInfo? _imageInfo;

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
    if (widget.provider != oldWidget.provider) {
      _getImage();
    }
  }

  /// Updates [_imageStream] and adds a listener to it.
  void _getImage() {
    final ImageStream? oldImageStream = _imageStream;
    final ImageConfiguration config = createLocalImageConfiguration(context);
    _imageStream = widget.provider.resolve(config);
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
  Widget build(final BuildContext context) =>
      RawImage(image: _imageInfo?.image, scale: _imageInfo?.scale ?? 1.0);
}

/// A [CacheImageProvider] that loads an image from a cached [Uint8List].
///
/// The [tag] parameter is a unique identifier for the image.
/// The [img] parameter is the [Uint8List] of raw image bytes.
///
/// ```dart
/// final CacheImageProvider provider = CacheImageProvider(
///   'my_image',
///   Uint8List.fromList([1, 2, 3]),
/// );
/// ```
///
/// The equality operator checks if two [CacheImageProvider]s have the same
/// [tag].
///
/// The [hashCode] getter returns the hash code of the [tag].
@immutable
class CacheImageProvider extends ImageProvider<CacheImageProvider> {
  const CacheImageProvider(this.tag, this.img);

  /// The [tag] parameter is a unique identifier for the image.
  final String tag;

  /// The [img] parameter is the [Uint8List] of raw image bytes.
  final Uint8List img;

  /// The [loadImage] method loads the image asynchronously and returns an
  /// [ImageStreamCompleter].
  @override
  ImageStreamCompleter loadImage(
    final CacheImageProvider key,
    final ImageDecoderCallback decode,
  ) =>
      MultiFrameImageStreamCompleter(
        codec: _loadAsync(decode), // ignore: discarded_futures
        scale: 1,
        debugLabel: tag,
        informationCollector: () sync* {
          yield ErrorDescription('Tag: $tag');
        },
      );

  /// The [_loadAsync] method loads the raw image bytes and decodes them into a
  /// [Codec]. If the image is empty, it evicts the image from the cache and
  /// throws an error.
  Future<Codec> _loadAsync(final ImageDecoderCallback decode) async {
    // the DefaultCacheManager() encapsulation, it get cache from local storage.
    final Uint8List bytes = img;

    if (bytes.lengthInBytes == 0) {
      // The file may become available later.
      PaintingBinding.instance.imageCache.evict(this);
      throw StateError('$tag is empty and cannot be loaded as an image.');
    }

    return decode(await ImmutableBuffer.fromUint8List(bytes));
  }

  /// The [obtainKey] method returns a [Future] that resolves to the
  /// [CacheImageProvider] synchronously.
  @override
  Future<CacheImageProvider> obtainKey(
    final ImageConfiguration configuration,
  ) =>
      SynchronousFuture<CacheImageProvider>(this);

  @override
  bool operator ==(final Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    final bool res = other is CacheImageProvider && other.tag == tag;
    return res;
  }

  @override
  int get hashCode => tag.hashCode;
}
