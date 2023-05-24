import '../utils/serializable.dart';
import '../utils/typedefs.dart';

/// Represents a phone dial code.
///
/// [code] is the numeric dial code.
///
/// [toString] returns the dial code prefixed with '+'.
class DialCode implements Serializable<DialCode> {
  const DialCode(this.code);

  /// The numeric dial code.
  final int code;

  @override
  String toString() => '+$code';

  @override
  DialCode? deserialize(final dynamic obj) {
    final String jsonCode = (obj is JSON
            ? (obj['code'] ?? obj['dialCode'] ?? obj['dial_code'])
            : obj)
        .toString()
        .replaceAll('+', '')
        .trim();

    final int? code = Serializable.tryDeserialize<int>(jsonCode);

    if (code == null) {
      assert(false, 'DialCode deserialization error.');
      return null;
    }

    return DialCode(code);
  }

  @override
  String serialize({final bool deep = true}) => toString();
}
