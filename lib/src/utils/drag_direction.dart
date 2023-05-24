import 'dart:ui';

/// Enum representing the four cardinal drag directions.
enum DragDirection {
  /// Drag direction towards the left.
  left,

  /// Drag direction towards the right.
  right,

  /// Drag direction towards the top.
  top,

  /// Drag direction towards the bottom.
  down;
}

/// Extension on [Offset] to determine the [DragDirection] of the offset.
extension DirectionalDrag on Offset {
  /// Returns true if the offset is dragging towards the left.
  bool get isLeftDrag => dx <= 0;

  /// Returns true if the offset is dragging towards the right.
  bool get isRightDrag => dx > 0;

  /// Returns true if the offset is dragging towards the top.
  bool get isTopDrag => dy > 0;

  /// Returns true if the offset is dragging towards the bottom.
  bool get isDownDrag => dy <= 0;

  /// Returns the [DragDirection] of the offset.
  DragDirection get direction {
    if (isLeftDrag) {
      return DragDirection.left;
    } else if (isRightDrag) {
      return DragDirection.right;
    } else if (isTopDrag) {
      return DragDirection.top;
    } else {
      return DragDirection.down;
    }
  }
}
