/// Extends the bool type with helper getters.
extension Bool on bool {
  /// [isTrue] returns `true` if this bool is `true`, `false` otherwise.
  bool get isTrue => this == true;

  /// [isFalse] returns `true` if this bool is `false`, `false` otherwise.
  bool get isFalse => this == false;

  /// [toggle] returns the opposite boolean value of this bool.
  bool get toggle => !this;
}
