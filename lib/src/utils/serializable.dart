import 'dart:convert';

import 'typedefs.dart';

/// Checks if [S] is a subtype of [T].
bool isSubtypeOf<S, T>() => <S>[] is List<T>;

/// Checks if [S] is a supertype of [T].
bool isSupertypeOf<S, T>() => <T>[] is List<S>;

/// The [Serializable] abstract interface class.
abstract interface class Serializable<T> {
  /// The registry mapping [Type]s to [Creator]s.
  static final Map<Type, Creator> _registry = <Type, Creator>{};

  /// The cache mapping [Type]s to instances.
  static final Map<Type, dynamic> _instanceCache = <Type, dynamic>{};

  /// Tries to get an instance of [T]. If an instance is cached, it is returned.
  /// If [T] is a [Serializable], it uses the registered creator to create and
  /// cache the instance. Otherwise, it returns `null`.
  static T? instanceOf<T>() {
    T? instance = _instanceCache[T] as T?;

    if (instance != null) {
      return instance;
    }

    instance = _registry[T]?.call() as T?;

    assert(
      !(isSubtypeOf<T, Serializable<T>>() && instance == null),
      throw AssertionError(
        'A Serializable<T> object must have '
        'registered an instance creator before used for deserialization.\n'
        'See [Serializable.register].',
      ),
    );

    return _instanceCache[T] ??= instance;
  }

  /// Registers a [Creator] for [T].
  static void register<T extends Serializable<T>>(final Creator<T> creator) {
    _registry.putIfAbsent(T, () => creator);
  }

  /// Deserializes an [obj] into a [T].
  T? deserialize(final dynamic obj);

  /// Serializes a [T] into a dynamic object.
  dynamic serialize({final bool deep = true});

  /// Tries to deserialize an [obj] into a [T].
  static T? tryDeserialize<T>(
    final dynamic obj, {
    final IterableConverter? iterableReviver,
    final MapConverter? mapReviver,
    final CustomConverter? customReviver,
  }) {
    if (obj != null) {
      try {
        if (customReviver != null) {
          return customReviver(obj) as T?;
        }

        final T? instance = instanceOf<T>();
        if (instance is Serializable) {
          return (instance as Serializable<T>).deserialize(obj);
        }
        if (obj is T?) {
          return obj;
        }

        if (obj is Map) {
          if (mapReviver != null) {
            return mapReviver(obj) as T?;
          }
          return obj.entries.map(
            (
              final MapEntry<dynamic, dynamic> entry,
            ) =>
                MapEntry<dynamic, dynamic>(
              Serializable.tryDeserialize<T>(
                entry.key,
                iterableReviver: iterableReviver,
                mapReviver: mapReviver,
                customReviver: customReviver,
              ),
              Serializable.tryDeserialize<T>(
                entry.value,
                iterableReviver: iterableReviver,
                mapReviver: mapReviver,
                customReviver: customReviver,
              ),
            ),
          ) as T?;
        }

        if (obj is Iterable) {
          if (iterableReviver != null) {
            return iterableReviver(obj) as T?;
          }
          return obj.map(
            (final dynamic el) => Serializable.tryDeserialize<T>(
              el,
              iterableReviver: iterableReviver,
              mapReviver: mapReviver,
              customReviver: customReviver,
            ),
          ) as T?;
        }

        return switch (T) {
          num => num.tryParse(obj),
          int => int.tryParse(obj),
          double => double.tryParse(obj),
          DateTime => DateTime.tryParse(obj),
          // If T is String and obj is String we would have excited earlier, and
          // the only other possible way to decode a String is if we assume obj
          // is JSON-encoded, and then try to parse it.
          String => jsonDecode(obj.toString()),
          bool => bool.tryParse(obj),
          _ => obj,
        } as T?;
      } on Exception catch (e) {
        assert(false, e);
      }
    }
    return null;
  }

  /// Tries to serialize an [obj].
  static dynamic trySerialize(
    final dynamic obj, {
    final IterableConverter? iterableConverter,
    final MapConverter? mapConverter,
    final CustomConverter? customConverter,
  }) {
    if (obj != null) {
      try {
        if (customConverter != null) {
          return customConverter(obj);
        }

        if (obj is Serializable) {
          return obj.serialize();
        }

        if (obj is Map) {
          if (mapConverter != null) {
            return mapConverter(obj);
          }
          return jsonEncode(
            obj.entries.map(
              (
                final MapEntry<dynamic, dynamic> entry,
              ) =>
                  MapEntry<dynamic, dynamic>(
                Serializable.trySerialize(
                  entry.key,
                  iterableConverter: iterableConverter,
                  mapConverter: mapConverter,
                  customConverter: customConverter,
                ),
                Serializable.trySerialize(
                  entry.value,
                  iterableConverter: iterableConverter,
                  mapConverter: mapConverter,
                  customConverter: customConverter,
                ),
              ),
            ),
          );
        }

        if (obj is Iterable) {
          if (iterableConverter != null) {
            return iterableConverter(obj);
          }
          return jsonEncode(
            obj.map(
              (final dynamic el) => Serializable.trySerialize(
                el,
                iterableConverter: iterableConverter,
                mapConverter: mapConverter,
                customConverter: customConverter,
              ),
            ),
          );
        }

        return switch (obj.runtimeType) {
          num || int || double || bool || String => obj,
          DateTime => (obj as DateTime).toIso8601String(),
          _ => jsonEncode(obj),
        };
      } on Exception catch (e) {
        assert(false, e);
      }
    }
    return null;
  }
}

/// The [Copyable] abstract interface class.
abstract interface class Copyable<T> {
  /// Copies this object with the given updates.
  ///
  /// Parameters:
  ///
  /// - [updates] -> The updates to apply.
  /// - [other] -> Another object to copy updates from.
  ///
  /// Returns: A copy of this object with the given updates.
  T copyWith({final JSON updates = const <String, dynamic>{}, final T? other});

  /// Creates a copy of this object.
  T copy();
}
