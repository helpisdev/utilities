// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$AddressAutoequal on Address {
  List<Object?> get _$props => [
        name,
        street,
        coords,
        numbering,
        city,
        state,
        country,
        zipCode,
      ];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressCWProxy {
  Address coords(Coordinates? coords);

  Address name(String? name);

  Address city(String? city);

  Address street(String? street);

  Address numbering(String? numbering);

  Address country(Country? country);

  Address zipCode(int? zipCode);

  Address state(String? state);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Address(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Address(...).copyWith(id: 12, name: "My name")
  /// ````
  Address call({
    Coordinates? coords,
    String? name,
    String? city,
    String? street,
    String? numbering,
    Country? country,
    int? zipCode,
    String? state,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddress.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddress.copyWith.fieldName(...)`
class _$AddressCWProxyImpl implements _$AddressCWProxy {
  const _$AddressCWProxyImpl(this._value);

  final Address _value;

  @override
  Address coords(Coordinates? coords) => this(coords: coords);

  @override
  Address name(String? name) => this(name: name);

  @override
  Address city(String? city) => this(city: city);

  @override
  Address street(String? street) => this(street: street);

  @override
  Address numbering(String? numbering) => this(numbering: numbering);

  @override
  Address country(Country? country) => this(country: country);

  @override
  Address zipCode(int? zipCode) => this(zipCode: zipCode);

  @override
  Address state(String? state) => this(state: state);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Address(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Address(...).copyWith(id: 12, name: "My name")
  /// ````
  Address call({
    Object? coords = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? street = const $CopyWithPlaceholder(),
    Object? numbering = const $CopyWithPlaceholder(),
    Object? country = const $CopyWithPlaceholder(),
    Object? zipCode = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
  }) {
    return Address(
      coords: coords == const $CopyWithPlaceholder()
          ? _value.coords
          // ignore: cast_nullable_to_non_nullable
          : coords as Coordinates?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      city: city == const $CopyWithPlaceholder()
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String?,
      street: street == const $CopyWithPlaceholder()
          ? _value.street
          // ignore: cast_nullable_to_non_nullable
          : street as String?,
      numbering: numbering == const $CopyWithPlaceholder()
          ? _value.numbering
          // ignore: cast_nullable_to_non_nullable
          : numbering as String?,
      country: country == const $CopyWithPlaceholder()
          ? _value.country
          // ignore: cast_nullable_to_non_nullable
          : country as Country?,
      zipCode: zipCode == const $CopyWithPlaceholder()
          ? _value.zipCode
          // ignore: cast_nullable_to_non_nullable
          : zipCode as int?,
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as String?,
    );
  }
}

extension $AddressCopyWith on Address {
  /// Returns a callable class that can be used as follows: `instanceOfAddress.copyWith(...)` or like so:`instanceOfAddress.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddressCWProxy get copyWith => _$AddressCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `Address(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Address(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  Address copyWithNull({
    bool coords = false,
    bool name = false,
    bool city = false,
    bool street = false,
    bool numbering = false,
    bool country = false,
    bool zipCode = false,
    bool state = false,
  }) {
    return Address(
      coords: coords == true ? null : this.coords,
      name: name == true ? null : this.name,
      city: city == true ? null : this.city,
      street: street == true ? null : this.street,
      numbering: numbering == true ? null : this.numbering,
      country: country == true ? null : this.country,
      zipCode: zipCode == true ? null : this.zipCode,
      state: state == true ? null : this.state,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map json) => $checkedCreate(
      'Address',
      json,
      ($checkedConvert) {
        final val = Address(
          coords: $checkedConvert(
              'coords',
              (v) => v == null
                  ? null
                  : Coordinates.fromJson(Map<String, dynamic>.from(v as Map))),
          name: $checkedConvert('name', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          street: $checkedConvert('street', (v) => v as String?),
          numbering: $checkedConvert('numbering', (v) => v as String?),
          country: $checkedConvert('country', (v) => countryFromJson(v)),
          zipCode: $checkedConvert('zipCode', (v) => v as int?),
          state: $checkedConvert('state', (v) => v as String?),
        );
        return val;
      },
    );

const _$AddressFieldMap = <String, String>{
  'name': 'name',
  'street': 'street',
  'coords': 'coords',
  'numbering': 'numbering',
  'city': 'city',
  'state': 'state',
  'country': 'country',
  'zipCode': 'zipCode',
};

// ignore: unused_element
abstract class _$AddressPerFieldToJson {
  // ignore: unused_element
  static Object? name(String? instance) => instance;
  // ignore: unused_element
  static Object? street(String? instance) => instance;
  // ignore: unused_element
  static Object? coords(Coordinates? instance) => instance?.toJson();
  // ignore: unused_element
  static Object? numbering(String? instance) => instance;
  // ignore: unused_element
  static Object? city(String? instance) => instance;
  // ignore: unused_element
  static Object? state(String? instance) => instance;
  // ignore: unused_element
  static Object? country(Country? instance) => countryToJson(instance);
  // ignore: unused_element
  static Object? zipCode(int? instance) => instance;
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'name': instance.name,
      'street': instance.street,
      'coords': instance.coords?.toJson(),
      'numbering': instance.numbering,
      'city': instance.city,
      'state': instance.state,
      'country': countryToJson(instance.country),
      'zipCode': instance.zipCode,
    };
