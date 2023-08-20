// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dial_code.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DialCodeCWProxy {
  DialCode code(int code);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DialCode(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DialCode(...).copyWith(id: 12, name: "My name")
  /// ````
  DialCode call({
    int? code,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDialCode.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDialCode.copyWith.fieldName(...)`
class _$DialCodeCWProxyImpl implements _$DialCodeCWProxy {
  const _$DialCodeCWProxyImpl(this._value);

  final DialCode _value;

  @override
  DialCode code(int code) => this(code: code);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DialCode(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DialCode(...).copyWith(id: 12, name: "My name")
  /// ````
  DialCode call({
    Object? code = const $CopyWithPlaceholder(),
  }) {
    return DialCode(
      code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
    );
  }
}

extension $DialCodeCopyWith on DialCode {
  /// Returns a callable class that can be used as follows: `instanceOfDialCode.copyWith(...)` or like so:`instanceOfDialCode.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DialCodeCWProxy get copyWith => _$DialCodeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DialCode _$DialCodeFromJson(Map json) => $checkedCreate(
      'DialCode',
      json,
      ($checkedConvert) {
        final val = DialCode(
          $checkedConvert('code', (v) => v as int),
        );
        return val;
      },
    );

const _$DialCodeFieldMap = <String, String>{
  'code': 'code',
};

// ignore: unused_element
abstract class _$DialCodePerFieldToJson {
  // ignore: unused_element
  static Object? code(int instance) => instance;
}

Map<String, dynamic> _$DialCodeToJson(DialCode instance) => <String, dynamic>{
      'code': instance.code,
    };
