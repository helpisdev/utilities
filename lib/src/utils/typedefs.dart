import 'package:flutter/widgets.dart';

import 'serializable.dart';

/// A function that builds a [Widget] given a [BuildContext] and index.
typedef PageItemBuilder = Widget Function(BuildContext, int);

/// A Map representing JSON data.
typedef JSON = Map<String, dynamic>;

/// A function that creates an instance of [T] which implements
/// [Serializable<T>].
typedef Creator<T extends Serializable<T>> = T Function();

/// A function that converts an [Iterable<dynamic>] into a dynamic value.
typedef IterableConverter = dynamic Function(Iterable<dynamic> el);

/// A function that converts a [Map<dynamic, dynamic>] into a dynamic value.
typedef MapConverter = dynamic Function(Map<dynamic, dynamic> map);

/// A function that converts a dynamic value into another dynamic value.
typedef CustomConverter = dynamic Function(dynamic el);
