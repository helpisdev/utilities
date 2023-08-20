import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/typedefs.dart';

part 'dial_code.g.dart';

/// Represents a phone dial code.
///
/// [code] is the numeric dial code.
///
/// [toString] returns the dial code prefixed with '+'.
@CopyWith(copyWithNull: true)
@JsonSerializable()
class DialCode {
  const DialCode(this.code);

  factory DialCode.fromJson(final JSON json) => _$DialCodeFromJson(json);

  JSON toJson() => _$DialCodeToJson(this);

  /// The numeric dial code.
  final int code;

  @override
  String toString() => '+$code';
}
