import 'dart:math';

extension RandomElement<E> on List<E> {
  /// Returns a random element from the list or null if the list is empty.
  E? get randomOrNull {
    if (isEmpty) {
      return null;
    }

    return this[Random().nextInt(length)];
  }
}
