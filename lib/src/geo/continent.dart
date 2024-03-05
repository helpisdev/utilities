// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'continent.g.dart';

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
@JsonEnum(alwaysCreate: true)
enum Continent {
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
}

Iterable<String> get continentEnumValues => _$ContinentEnumMap.values;
Map<Continent, String> get continentEnumMap => _$ContinentEnumMap;
String? continentToJson(final Continent? continent) =>
    continentEnumMap[continent];

Continent? continentFromJson(final Object? continent) {
  if (continent is Continent) {
    return continent;
  }
  if (continent is num) {
    return Continent.values.elementAtOrNull(continent.toInt());
  }
  if (continent is int) {
    return Continent.values.elementAtOrNull(continent);
  }
  if (continent is String) {
    for (final Continent c in Continent.values) {
      if (c.name == continent.toUpperCase() ||
          c.fullName.toLowerCase() == continent.toLowerCase()) {
        return c;
      }
    }
  }

  return null;
}
