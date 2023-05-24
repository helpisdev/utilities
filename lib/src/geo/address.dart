import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../utils/serializable.dart';
import '../utils/typedefs.dart';
import 'coordinates.dart';
import 'country.dart';

part 'address.g.dart';

/// Representation of a physical address.
@immutable
@autoequal
class Address extends Equatable
    implements Serializable<Address>, Copyable<Address> {
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

  @override
  JSON serialize({final bool deep = true}) => <String, Object?>{
        'coords': coords?.serialize(deep: deep),
        'name': name,
        'address': address,
        'city': city,
        'state': state,
        'street': street,
        'number': number,
        'number_special': numberSpecial,
        'country': country?.serialize(deep: deep),
        'zip_code': zipCode,
      };

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
  Address deserialize(final dynamic obj) {
    final JSON address = obj as JSON;

    return Address(
      coords: Serializable.tryDeserialize<Coordinates>(address['coords']),
      name: address['name'],
      address: address['address'],
      city: address['city'],
      state: address['state'],
      street: address['street'],
      number: address['number'],
      numberSpecial: address['number_special'],
      country: Serializable.tryDeserialize<Country>(address['country']),
      zipCode: address['zip_code'],
    );
  }

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

  @override
  Address copyWith({
    final JSON updates = const <String, dynamic>{},
    final Address? other,
  }) =>
      Address(
        name: updates['name'] ?? other?.name ?? name,
        address: updates['address'] ?? other?.address ?? address,
        street: updates['street'] ?? other?.street ?? street,
        coords: updates['coords'] ?? other?.coords ?? coords,
        number: updates['number'] ?? other?.number ?? number,
        numberSpecial: updates['numberSpecial'] ??
            updates['number_special'] ??
            other?.numberSpecial ??
            numberSpecial,
        city: updates['city'] ?? other?.city ?? city,
        state: updates['state'] ?? other?.state ?? state,
        country: updates['country'] ?? other?.country ?? country,
        zipCode: updates['zipCode'] ??
            updates['zip_code'] ??
            other?.zipCode ??
            zipCode,
      );

  @override
  Address copy() => Address(
        name: name,
        address: address,
        street: street,
        coords: coords,
        number: number,
        numberSpecial: numberSpecial,
        city: city,
        state: state,
        country: country,
        zipCode: zipCode,
      );
}
