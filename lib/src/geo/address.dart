import 'package:autoequal/autoequal.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/typedefs.dart';
import 'coordinates.dart';
import 'country.dart';

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
  /// - [address] -> The full address (e.g. "123 Main St").
  /// - [city] -> The city of the address.
  /// - [state] -> The state/province of the address.
  /// - [street] -> The street name of the address.
  /// - [number] -> The street number of the address.
  /// - [numberSpecial] -> Any special street number (e.g. "1/2").
  /// - [country] -> The country of the address.
  /// - [zipCode] -> The ZIP/postal code of the address.
  const Address({
    this.coords,
    this.name,
    this.address,
    this.city,
    this.state,
    this.street,
    this.number,
    this.numberSpecial,
    this.country,
    this.zipCode,
  });

  factory Address.fromJson(final JSON json) => _$AddressFromJson(json);

  /// The name of the address (e.g. "Home").
  final String? name;

  /// The full address (e.g. "123 Main St").
  final String? address;

  /// The street name of the address.
  final String? street;

  /// The coordinates of the address.
  final Coordinates? coords;

  /// The street number of the address.
  final int? number;

  /// Any special street number (e.g. "1/2").
  final String? numberSpecial;

  /// The city of the address.
  final String? city;

  /// The state/province of the address.
  final String? state;

  /// The country of the address.
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
  address: $address,
  city: $city,
  state: $state,
  street: $street,
  number: $number,
  numberSpecial: $numberSpecial,
  country: $country,
  zipCode: $zipCode,
)''';

  @override
  int get hashCode => coords.hashCode;

  @override
  bool operator ==(final Object other) =>
      other is Address &&
      coords == other.coords &&
      name == other.name &&
      address == other.address &&
      city == other.city &&
      state == other.state &&
      street == other.street &&
      numberSpecial == other.numberSpecial &&
      number == other.number &&
      country == other.country &&
      zipCode == other.zipCode;
}
