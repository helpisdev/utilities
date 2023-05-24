import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// This widget is invisible for its parent to hit testing, but still
/// allows its subtree to receive pointer events.
/// See also:
///
///  * [IgnorePointer], which is also invisible for its parent during hit
///  testing, but does not allow its subtree to receive pointer events.
///  * [AbsorbPointer], which is visible during hit testing, but prevents its
///  subtree from receiving pointer event. The opposite of this widget.
class TransparentPointer extends SingleChildRenderObjectWidget {
  /// Creates a widget that is invisible for its parent to hit testing, but
  /// still allows its subtree to receive pointer events.
  const TransparentPointer({super.key, super.child, this.transparent = true});

  /// Whether this widget is invisible to its parent during hit testing.
  final bool transparent;

  @override
  RenderTransparentPointer createRenderObject(final BuildContext context) =>
      RenderTransparentPointer(transparent: transparent);

  @override
  void updateRenderObject(
    final BuildContext context,
    final RenderTransparentPointer renderObject,
  ) =>
      renderObject.transparent = transparent;

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('transparent', transparent));
  }
}

/// This widget is invisible for its parent to hit testing, but still
/// allows its subtree to receive pointer events.
///
/// Parameters:
/// [transparent] -> Whether this widget is invisible to its parent during hit
/// testing.
///
/// Overrides `hitTest()` to return `false` if [transparent] is `true`,
/// otherwise call `super.hitTest()`.
class RenderTransparentPointer extends RenderProxyBox {
  RenderTransparentPointer({this.transparent = true});

  /// Whether this widget is invisible to its parent during hit testing.
  bool transparent;

  @override
  bool hitTest(
    final BoxHitTestResult result, {
    required final Offset position,
  }) {
    final bool hit = super.hitTest(result, position: position);
    return !transparent && hit;
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('transparent', transparent));
  }
}
