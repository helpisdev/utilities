import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Extends [String] to add a nullability check.
extension NullableOrEmpty on String? {
  /// Returns `true` if this string is `null` or empty.
  bool get isEmptyOrNull => this == null || this!.isEmpty;

  /// Returns `true` if this string is not `null` and not empty.
  bool get isNotEmptyOrNull => !isEmptyOrNull;
}

/// Extends [String] to add a SHA-256 hash method.
extension SHA on String {
  /// Returns the SHA-256 hash of this string as a hex notation.
  String get sha256asString {
    final List<int> bytes = utf8.encode(this);
    final Digest digest = sha256.convert(bytes);
    return digest.toString();
  }
}
