import 'package:autoequal/autoequal.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utilities.dart';
import '../utils/typedefs.dart';
import 'coordinates.dart';
import 'country.dart';
import 'geo.dart';

part 'address.g.dart';

/// Representation of a physical address.
@immutable
@autoequal
@CopyWith(copyWithNull: true)
@JsonSerializable()
class Address extends Equatable {
  /// Initializes the address.
  ///
  /// Parameters:
  ///
  /// - [coords] -> The coordinates of the address.
  /// - [name] -> The name of the address (e.g. "Home").
  /// - [city] -> The city of the address.
  /// - [state] -> The state/province of the address.
  /// - [street] -> The street name of the address.
  /// - [numbering] -> The street numbering of the address.
  /// - [country] -> The country of the address.
  /// - [zipCode] -> The ZIP/postal code of the address.
  const Address({
    this.coords,
    this.name,
    this.city,
    this.street,
    this.numbering,
    this.country,
    this.zipCode,
    this.state,
  });

  factory Address.fromJson(final JSON json) => _$AddressFromJson(json);

  /// The name of the address (e.g. "Home").
  final String? name;

  /// The street name of the address.
  final String? street;

  /// The coordinates of the address.
  final Coordinates? coords;

  /// Street numbering (e.g. "29a").
  final String? numbering;

  /// The city of the address.
  final String? city;

  /// The state/province of the address.
  final String? state;

  /// The country of the address.
  @JsonKey(fromJson: countryFromJson, toJson: countryToJson)
  final Country? country;

  /// The ZIP/postal code of the address.
  final int? zipCode;

  @override
  List<Object?> get props => _$props;

  JSON toJson() => _$AddressToJson(this);

  @override
  String toString() => '''
Address(
  coords: $coords,
  name: $name,
  city: $city,
  state: $state,
  street: $street,
  number: $numbering,
  country: $country,
  zipCode: $zipCode,
)''';
}
