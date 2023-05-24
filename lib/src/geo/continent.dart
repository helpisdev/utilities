// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';

import '../utils/serializable.dart';
import '../utils/typedefs.dart';

/// Enum representing the continents of the world.
///
/// Each continent has a full name and serialization methods.
///
/// [AF] - Africa
/// [AN] - Antarctica
/// [AS] - Asia
/// [EU] - Europe
/// [NA] - North America
/// [OC] - Oceania
/// [SA] - South America
enum Continent implements Serializable<Continent> {
  AF('Africa'),
  AN('Antarctica'),
  AS('Asia'),
  EU('Europe'),
  NA('North America'),
  OC('Oceania'),
  SA('South America');

  const Continent(this.fullName);

  /// The full name of the continent.
  final String fullName;

  @override
  String serialize({final bool deep = true}) => name;

  @override
  Continent? deserialize(final dynamic obj) {
    JSON? json;
    try {
      if (obj is JSON) {
        json = obj;
      } else {
        json = jsonDecode(obj.toString()) as JSON;
      }
    } on FormatException {
      // Abort gracefully...
    }
    final Continent? continent = switch (obj.runtimeType) {
      Continent => obj,
      String => Continent.values.singleWhereOrNull(
          (final Continent continent) => continent.fullName == obj.toString(),
        ),
      // JSON or null
      _ => Continent.values.asNameMap()[obj.toString().toUpperCase()] ??
          json?['continent'],
    };
    return continent;
  }
}
