import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../utils/serializable.dart';
import '../utils/typedefs.dart';

part 'coordinates.g.dart';

/// Representation of geographic coordinates (latitude and longitude).
///
/// Parameters:
///
/// - [latitude] -> The latitude coordinate.
/// - [longitude] -> The longitude coordinate.
@autoequal
@immutable
class Coordinates extends Equatable
    implements Serializable<Coordinates>, Copyable<Coordinates> {
  const Coordinates(this.latitude, this.longitude);

  /// The latitude coordinate.
  final double latitude;

  /// The longitude coordinate.
  final double longitude;

  @override
  List<Object?> get props => _$props;

  @override
  JSON serialize({final bool deep = true}) => <String, dynamic>{
        'latitude': latitude,
        'longitude': longitude,
      };

  @override
  int get hashCode => latitude.hashCode + longitude.hashCode;

  @override
  bool operator ==(final Object other) =>
      other is Coordinates &&
      latitude == other.latitude &&
      longitude == other.longitude;

  @override
  Coordinates? deserialize(final dynamic obj) {
    final JSON json = obj as JSON;

    final double? latitude = Serializable.tryDeserialize<double>(
      json['lat'] ?? json['latitude'],
    );
    final double? longitude = Serializable.tryDeserialize<double>(
      json['lng'] ?? json['longitude'],
    );

    if (latitude == null || longitude == null) {
      assert(false, 'Coordinates deserialization error.');
      return null;
    }

    return Coordinates(latitude, longitude);
  }

  @override
  Coordinates copyWith({
    final JSON updates = const <String, dynamic>{},
    final Coordinates? other,
  }) =>
      Coordinates(
        updates['latitude'] ?? updates['lat'] ?? other?.latitude ?? latitude,
        updates['longitude'] ?? updates['lng'] ?? other?.longitude ?? longitude,
      );

  @override
  Coordinates copy() => Coordinates(latitude, longitude);
}
