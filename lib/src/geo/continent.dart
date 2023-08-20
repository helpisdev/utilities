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
@JsonEnum(
  valueField: 'fullName',
  fieldRename: FieldRename.snake,
  alwaysCreate: true,
)
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
