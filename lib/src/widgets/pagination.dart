import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'buttons/outlined.dart';

/// Pagination widget to navigate between pages.
///
/// The [totalPages] argument is the total number of pages. It must be
/// greater than 1.
///
/// The [numOfVisibleButtons] argument is the number of page buttons
/// visible on the screen. It must be greater than 1 and less than or equal
/// to [totalPages].
///
/// The [onPressed] callback will be called when a page button is tapped. It
/// should return `true` if the page change is accepted.
///
/// The [style] argument customizes the appearance of the pagination buttons.
///
/// If [hasFlowButtons] is true, "back" and "next" flow buttons will be shown
/// on the edges. Custom flow buttons can be provided with [backButton] and
/// [nextButton].
///
/// Custom "..." button can be provided with [dots].
class Pagination extends StatefulWidget {
  const Pagination({
    required this.totalPages,
    required this.style,
    this.numOfVisibleButtons = 6,
    this.hasFlowButtons = true,
    this.backButton,
    this.nextButton,
    this.dots,
    this.onPressed,
    super.key,
  })  : assert(
          totalPages >= numOfVisibleButtons,
          'Total pages must be greater or '
          'equal to the number of visible buttons.',
        ),
        assert(
          totalPages >= 1,
          'Total pages must be greater than zero.',
        ),
        assert(
          numOfVisibleButtons >= 1,
          'Number of visible buttons must be greater than zero.',
        );

  /// The [totalPages] argument is the total number of pages. It must be
  /// greater than 1.
  final int totalPages;

  /// The [numOfVisibleButtons] argument is the number of page buttons
  /// visible on the screen. It must be greater than 1 and less than or equal
  /// to [totalPages].
  final int numOfVisibleButtons;

  /// The [onPressed] callback will be called when a page button is tapped. It
  /// should return `true` if the page change is accepted.
  final bool Function(int page, BuildContext context)? onPressed;

  /// The [style] argument customizes the appearance of the pagination buttons.
  final PaginationStyle style;

  /// If [hasFlowButtons] is true, "back" and "next" flow buttons will be shown
  /// on the edges. Custom flow buttons can be provided with [backButton] and
  /// [nextButton].
  final bool hasFlowButtons;

  final Widget? backButton;
  final Widget? nextButton;

  /// Custom "..." button can be provided with [dots].
  final Widget? dots;

  @override
  State<Pagination> createState() => _PaginationState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IntProperty('totalPages', totalPages))
      ..add(IntProperty('numOfVisibleButtons', numOfVisibleButtons))
      ..add(
        ObjectFlagProperty<bool Function(int page, BuildContext context)?>.has(
          'onPressed',
          onPressed,
        ),
      )
      ..add(DiagnosticsProperty<PaginationStyle>('style', style))
      ..add(DiagnosticsProperty<bool>('hasFlowButtons', hasFlowButtons));
  }
}

/// Specifies how the pagination row and the pagination buttons should be
/// layed out.
class _PaginationState extends State<Pagination> {
  /// The index of the currently active pagination button.
  int activeEl = 1;

  /// Called when a pagination button is tapped.
  ///
  /// Checks if the page change is accepted by calling [Pagination.onPressed].
  /// If accepted, updates [activeEl] to the tapped page button's index.
  void onPressed(final int i) {
    if (widget.onPressed?.call(i - 1, context) ?? true) {
      setState(() => activeEl = i);
    }
  }

  /// Computes the list of pagination buttons and "..." buttons to display.
  List<Widget> get paginationElements {
    final ButtonStyle flowButtonStyle = StyledOutlinedButton.styleFrom(
      backgroundColor: widget.style.backgroundColor,
      shape: widget.style.border,
      fixedSize: widget.style.size,
      textStyle: widget.style.fontStyle,
    );

    final Widget dot = _DotIcon(widget: widget);
    final Widget dots = widget.dots ?? _Dots(dot: dot);

    final Widget back = widget.backButton ??
        DefaultOutlinedButton(
          onPressed: () => onPressed(activeEl - 1),
          label: '←',
          style: flowButtonStyle,
          disabled: activeEl == 1,
        );

    final Widget next = widget.nextButton ??
        DefaultOutlinedButton(
          onPressed: () => onPressed(activeEl + 1),
          label: '→',
          style: flowButtonStyle,
          disabled: activeEl == widget.totalPages,
        );

    return computePaginationElements(next: next, back: back, dots: dots);
  }

  /// Computes the pagination buttons to display based on:
  /// - The total number of pages
  /// - The number of visible pagination buttons
  /// - The currently active page
  /// - Whether the active page is the first or last page
  ///
  /// Returns a list of page buttons and "..." buttons.
  List<Widget> computePaginationElements({
    required final Widget dots,
    required final Widget back,
    required final Widget next,
  }) {
    final int visibleButtons = widget.numOfVisibleButtons;
    final int halfOfVisibleButtons = visibleButtons ~/ 2;
    final int remainderVisibleButton = visibleButtons % 2;

    final int lastEl = widget.totalPages;
    final int nextEl = activeEl + 1;
    final int prevEl = activeEl - 1;
    final int prePrevEl = activeEl - 2;
    final int prevFromLastEl = lastEl - 1;
    final int untilLast = lastEl - activeEl;

    final bool activeIsFirst = activeEl == 1;
    final bool activeIsLast = activeEl == lastEl;
    final bool nextIsLast = nextEl == lastEl;
    final bool moreThan2UntilLast = untilLast > 2;
    final bool moreThan2Total = lastEl > 2;

    return <Widget>[
      if (widget.hasFlowButtons) back,
      ...switch (visibleButtons) {
        > 3 => paginationAlgorithm(
            lastEl: lastEl,
            halfVisible: halfOfVisibleButtons,
            remainderVisible: remainderVisibleButton,
            visible: visibleButtons,
            dots: dots,
          ),
        == 3 => switch (moreThan2UntilLast) {
            true => <Widget>[
                toPaginationButton(activeEl),
                toPaginationButton(nextEl),
                dots,
                toPaginationButton(lastEl),
              ],
            false => <Widget>[
                if (activeIsLast) toPaginationButton(prePrevEl),
                if (!activeIsFirst) toPaginationButton(prevEl),
                toPaginationButton(activeEl),
                if (activeIsFirst) toPaginationButton(nextEl),
                if (!activeIsLast) ...<Widget>[
                  if (!nextIsLast && !activeIsFirst) dots,
                  toPaginationButton(lastEl),
                ],
              ],
          },
        == 2 => switch (activeIsLast) {
            true => <Widget>[
                if (moreThan2Total) dots,
                toPaginationButton(prevFromLastEl),
                toPaginationButton(lastEl),
              ],
            false => <Widget>[
                if (moreThan2Total && nextIsLast) dots,
                toPaginationButton(activeEl),
                toPaginationButton(nextEl),
                if (moreThan2Total && !nextIsLast) dots,
              ],
          },
        _ => <Widget>[
            if (!activeIsFirst) dots,
            toPaginationButton(activeEl),
            if (!activeIsLast) dots,
          ],
      },
      if (widget.hasFlowButtons) next,
    ];
  }

  /// Creates a list of pagination buttons based on the given parameters.
  ///
  /// Parameters:
  /// - [lastEl] -> The total number of elements / the last's element index.
  /// - [visible] -> The number of visible buttons.
  /// - [halfVisible] -> Half of the visible buttons.
  /// - [remainderVisible] -> The remainder of visible / 2.
  /// - [dots] -> The widget used for the dots separating halves.
  ///
  /// Returns: A list of pagination buttons.
  ///
  /// The logic works as follows:
  ///
  /// - Calculate the first half end index:
  ///   - lastEl - halfVisible - remainderVisible
  /// - The second half starts at firstHalfEnd + 1
  /// - Get the next element index:
  ///   - activeEl + 1
  /// - If nextEl is after the first half end, only the second half is visible.
  /// - If only the second half is visible, the first visible element is:
  ///   - lastEl - visible + remainderVisible
  /// - Otherwise, if the first half is also visible, the first visible element
  ///   is:
  ///   - max(1, activeEl - halfVisible + 2)
  /// - If only the second half is visible, the last visible element is lastEl.
  /// - Otherwise, if the first half is also visible, the last visible element
  ///   is:
  ///   - max(nextEl, halfVisible)
  /// - Generate the buttons from firstVisibleEl to lastVisibleEl.
  /// - If the first half is also visible, add the dots and the second half
  ///   buttons.
  List<Widget> paginationAlgorithm({
    required final int lastEl,
    required final int visible,
    required final int halfVisible,
    required final int remainderVisible,
    required final Widget dots,
  }) {
    // total buttons - half of visible buttons - remainder (half ~/ 2)
    // e.g.:
    // total = 7
    // visible = 5
    // halfVisible = 5 ~/ 2 = 2
    // remainderVisible = 5 % 2 = 1
    // first half = 7 - 2 - 1 = 4
    // _1_ _2_ ... _5_ _6_ _7_
    // Since the "second half" starts after the dots, the previous element is
    // considered the first's half end, which is _4_
    final int firstHalfEnd = lastEl - halfVisible - remainderVisible;

    // Logically, the second half starts at _5_
    final int secondHalfStart = firstHalfEnd + 1;

    // The element that would be active next if the user clicked the next button
    final int nextEl = activeEl + 1;

    // If the sequencially next element is after the first's half end, only the
    // second half is visible.
    final bool onlySecHalf = nextEl >= firstHalfEnd;

    // If the sequencially next element is after the first's half end, the
    // first visible element will be _3_, so that 5 buttons are visible.
    //
    // first visible element = 7 - 5 + 1 = 3 => _3_ _4_ _5_ _6_ _7_
    final int firstVisibleInSecHalf = lastEl - visible + remainderVisible;

    // Otherwise, if the sequencially next element is before the first's half
    // end, the first visible element will be:
    //   - active - halfVisible + 2
    //     - e.g., if active = 2, then: 2 - 2 + 2 = 2 => _2_ ... _4_ _5_ _6_ _7_
    //   - 1, if the above case returns a number < 0, e.g.:
    //     - total = 9
    //     - visible = 6
    //     - halfVisible = 6 ~/ 2 = 3
    //     - firstHalfEnd = 9 - 3 - 0 = 6
    //     - active = 1
    //     - nextEl = 1 + 1 = 2 < 6
    //     - active - halfVisible + 2 = 1 - 3 + 2 = 0, which results in a
    //       logical error, thus we use 1 as the min value.
    //       _1_ _2_ _3_ ... _7_ _8_ _9_
    final int firstVisibleIn1stHalf = max(1, activeEl - halfVisible + 2);
    final int firstVisibleEl =
        onlySecHalf ? firstVisibleInSecHalf : firstVisibleIn1stHalf;

    // If the sequencially next element is after the first's half end, the
    // last visible element will be the last element in total.
    final int lastVisibleInSecHalf = lastEl;

    // Otherwise, if the sequencially next element is before the first's half
    // end, the last visible element will be:
    //   - nextEl:
    //     - total = 9
    //     - visible = 6
    //     - halfVisible = 6 ~/ 2 = 3
    //     - firstHalfEnd = 9 - 3 - 0 = 6
    //     - active = 4
    //     - firstVisibleEl = 4 - 3 + 2 = 3
    //     - nextEl = 4 + 1 = 5 < 6
    //     - nextEl > halfVisible
    //     e.g.: _3_ _4_ ... _6_ _7_ _8_ _9_
    //   - halfVisible:
    //     - total = 9
    //     - visible = 6
    //     - halfVisible = 6 ~/ 2 = 3
    //     - firstHalfEnd = 9 - 3 - 0 = 6
    //     - active = 1
    //     - firstVisibleEl = 1
    //     - nextEl = 1 + 1 = 2 < 3
    //     - nextEl < halfVisible
    //     e.g.: _1_ _2_ _3_ ... _7_ _8_ _9_
    final int lastVisibleIn1stHalf = max(nextEl, halfVisible);
    final int lastVisibleEl =
        onlySecHalf ? lastVisibleInSecHalf : lastVisibleIn1stHalf;

    return <Widget>[
      for (int i = firstVisibleEl; i <= lastVisibleEl; ++i)
        toPaginationButton(i),
      if (!onlySecHalf) ...<Widget>[
        dots,
        for (int i = secondHalfStart; i <= lastVisibleInSecHalf; ++i)
          toPaginationButton(i),
      ],
    ];
  }

  /// Creates a pagination button with the given index and styling.
  Widget toPaginationButton(final int i) => PaginationButton(
        style: widget.style,
        index: i,
        onPressed: () => onPressed(i),
        active: activeEl == i,
      );

  @override
  Widget build(final BuildContext context) => Wrap(
        direction: widget.style.direction,
        alignment: widget.style.alignment,
        spacing: widget.style.spacing,
        runAlignment: widget.style.runAlignment,
        runSpacing: widget.style.runSpacing,
        crossAxisAlignment: widget.style.crossAxisAlignment,
        textDirection: widget.style.textDirection,
        verticalDirection: widget.style.verticalDirection,
        clipBehavior: widget.style.clipBehavior,
        children: paginationElements,
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('active', activeEl));
  }
}

/// Displays a row of dots to indicate more pages.
///
/// The [dot] parameter defines the widget used to represent a single dot.
///
/// For example:
/// ```dart
/// _Dots(
///   dot: _DotIcon(widget: widget)
/// )
/// ```
/// Would display three [_DotIcon] widgets with spacing in between.
class _Dots extends StatelessWidget {
  const _Dots({
    required this.dot,
  });

  /// Defines the widget used to represent a single dot.
  final Widget dot;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            dot,
            const SizedBox(width: 4),
            dot,
            const SizedBox(width: 4),
            dot,
          ],
        ),
      );
}

/// Displays an icon to represent a single dot.
///
/// The [widget] parameter provides the [Pagination] widget, which is used
/// to determine styling.
///
/// For example:
/// ```dart
/// _DotIcon(
///   widget: widget
/// )
/// ```
/// Would display a circle [Icon] with size and color determined by
/// [PaginationStyle].
class _DotIcon extends StatelessWidget {
  const _DotIcon({
    required this.widget,
  });

  /// Provides the [Pagination] widget, which is used to determine styling.
  final Pagination widget;

  @override
  Widget build(final BuildContext context) => Icon(
        Icons.circle,
        size: 10,
        color: widget.style.backgroundColor,
      );
}

/// Specifies how the pagination row and the pagination buttons should be
/// styled.
class PaginationStyle {
  /// Pagination style with reasonable defaults.
  PaginationStyle({
    this.backgroundColor,
    this.activeColor,
    this.fontStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    this.activeFontStyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    this.size = const Size.square(60),
    this.activeSize = const Size.square(72),
    this.border = const RoundedRectangleBorder(
      side: BorderSide(width: 2),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(4),
        topRight: Radius.circular(4),
        bottomLeft: Radius.circular(4),
        bottomRight: Radius.circular(4),
      ),
    ),
    this.activeBorder,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.spaceBetween,
    this.spacing = 4,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0,
    this.crossAxisAlignment = WrapCrossAlignment.end,
    this.textDirection = TextDirection.ltr,
    this.verticalDirection = VerticalDirection.down,
    this.clipBehavior = Clip.none,
  });

  /// Background color.
  final Color? backgroundColor;

  /// Background color when active.
  final Color? activeColor;

  /// Text color.
  final TextStyle fontStyle;

  /// Text color when active.
  final TextStyle activeFontStyle;

  /// Button's size.
  final Size size;

  /// Button's size when active.
  final Size activeSize;

  /// Button's outline border.
  final OutlinedBorder border;

  /// Button's outline border when active.
  final OutlinedBorder? activeBorder;

  /// Pagination row direction.
  final Axis direction;

  /// Pagination row wrap alignment.
  final WrapAlignment alignment;

  /// Spacing between [PaginationButton]s.
  final double spacing;

  /// Alignment of wrap container in the available space.
  final WrapAlignment runAlignment;

  /// Spacing between rows of [PaginationButton]s.
  final double runSpacing;

  /// Alignment of [PaginationButton] rows on the cross axis.
  final WrapCrossAlignment crossAxisAlignment;

  /// Text direction.
  final TextDirection textDirection;

  /// Vertical direction.
  final VerticalDirection verticalDirection;

  /// Clip behavior.
  final Clip clipBehavior;
}

/// Default rectangular button used in pagination tables.
class PaginationButton extends StatelessWidget {
  /// Constructs a pagination button of [index] with a specific [style].
  const PaginationButton({
    required this.style,
    required this.index,
    required this.onPressed,
    this.active = false,
    this.disabled = false,
    super.key,
  });

  /// Page index.
  final int index;

  /// Button's style.
  final PaginationStyle style;

  /// Indicates if the button corresponds to the currently active page.
  final bool active;

  /// Indicates if the button is disabled.
  final bool disabled;

  /// Click callback.
  final VoidCallback onPressed;

  @override
  Widget build(final BuildContext context) => SizedBox.fromSize(
        size: active ? style.activeSize : style.size,
        child: DefaultOutlinedButton(
          onPressed: onPressed,
          label: index.toString(),
          disabled: disabled,
          style: StyledOutlinedButton.styleFrom(
            backgroundColor: active
                ? style.activeColor ?? style.backgroundColor
                : style.backgroundColor,
            shape: active ? style.activeBorder ?? style.border : style.border,
            textStyle: active ? style.activeFontStyle : style.fontStyle,
          ),
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<PaginationStyle>('style', style))
      ..add(DiagnosticsProperty<bool>('active', active))
      ..add(IntProperty('index', index))
      ..add(ObjectFlagProperty<VoidCallback>.has('onPressed', onPressed))
      ..add(DiagnosticsProperty<bool>('disabled', disabled));
  }
}
