/// Extends [Object] to add nullability checks.
extension Nullable on Object? {
  /// Returns `true` if this object is not `null`.
  bool get isNotNull => this != null;

  /// Returns `true` if this object is `null`.
  bool get isNull => this == null;
}
