import 'package:autoequal/autoequal.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

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
@CopyWith(copyWithNull: true)
@JsonSerializable()
class Coordinates extends Equatable {
  const Coordinates(this.latitude, this.longitude);

  factory Coordinates.fromJson(final JSON json) => _$CoordinatesFromJson(json);

  JSON toJson() => _$CoordinatesToJson(this);

  /// The latitude coordinate.
  final double latitude;

  /// The longitude coordinate.
  final double longitude;

  @override
  List<Object?> get props => _$props;

  @override
  int get hashCode => latitude.hashCode + longitude.hashCode;

  @override
  bool operator ==(final Object other) =>
      other is Coordinates &&
      latitude == other.latitude &&
      longitude == other.longitude;
}
