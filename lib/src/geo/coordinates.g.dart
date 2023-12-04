// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$CoordinatesAutoequal on Coordinates {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props => [
        latitude,
        longitude,
      ];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CoordinatesCWProxy {
  Coordinates latitude(double latitude);

  Coordinates longitude(double longitude);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Coordinates(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Coordinates(...).copyWith(id: 12, name: "My name")
  /// ````
  Coordinates call({
    double? latitude,
    double? longitude,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCoordinates.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCoordinates.copyWith.fieldName(...)`
class _$CoordinatesCWProxyImpl implements _$CoordinatesCWProxy {
  const _$CoordinatesCWProxyImpl(this._value);

  final Coordinates _value;

  @override
  Coordinates latitude(double latitude) => this(latitude: latitude);

  @override
  Coordinates longitude(double longitude) => this(longitude: longitude);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Coordinates(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Coordinates(...).copyWith(id: 12, name: "My name")
  /// ````
  Coordinates call({
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return Coordinates(
      latitude == const $CopyWithPlaceholder() || latitude == null
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double,
      longitude == const $CopyWithPlaceholder() || longitude == null
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double,
    );
  }
}

extension $CoordinatesCopyWith on Coordinates {
  /// Returns a callable class that can be used as follows: `instanceOfCoordinates.copyWith(...)` or like so:`instanceOfCoordinates.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CoordinatesCWProxy get copyWith => _$CoordinatesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinates _$CoordinatesFromJson(Map json) => $checkedCreate(
      'Coordinates',
      json,
      ($checkedConvert) {
        final val = Coordinates(
          $checkedConvert('latitude', (v) => (v as num).toDouble()),
          $checkedConvert('longitude', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

const _$CoordinatesFieldMap = <String, String>{
  'latitude': 'latitude',
  'longitude': 'longitude',
};

// ignore: unused_element
abstract class _$CoordinatesPerFieldToJson {
  // ignore: unused_element
  static Object? latitude(double instance) => instance;
  // ignore: unused_element
  static Object? longitude(double instance) => instance;
}

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
