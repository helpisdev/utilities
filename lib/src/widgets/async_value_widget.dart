import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This widget handles the three mutually exclusive states of an [AsyncValue]
/// and displays a widget that matches the given state.
///
/// Override this widget and implement the
/// [AsyncValueDefaultStateRepresentation] contract to provide default callbacks
/// for `AsyncValue.error` and `AsyncValue.loading` states.
///
/// You can also indicate if the resulting widget will be a `Sliver` by setting
/// the [AsyncValueWidgetBase.isSliver] property to `true`. Doing so will result
/// in automatic wrapping of the resulting widget of
/// [AsyncValueWidgetBase.error] and [AsyncValueWidgetBase.loading] in a
/// [SliverToBoxAdapter], so you don't have to do it manually.
abstract class AsyncValueWidgetBase<T> extends StatelessWidget
    implements AsyncValueDefaultStateRepresentation {
  /// Constructs a base widget that wraps an [AsyncValue], used to implement
  /// a widget with [loading] and [error] default states, that can be overriden
  /// if needed. Can handle sliver widgets as well.
  const AsyncValueWidgetBase({
    required this.value,
    required this.data,
    this.loading,
    this.error,
    this.isSliver = false,
    super.key,
  });

  /// The [AsyncValue] of type [T] that this widget examines and displays its
  /// corresponding state.
  final AsyncValue<T> value;

  /// The [data] handler of [AsyncValueX.when].
  final AsyncValueWidgetDataCallback<T> data;

  /// The [loading] handler of [AsyncValueX.when].
  final AsyncValueWidgetLoadingCallback? loading;

  /// The [error] handler of [AsyncValueX.when].
  final AsyncValueWidgetErrorCallback? error;

  /// Indicates if the [Widget] returned from the [data] callback is a
  /// `Sliver` or not, to automatically wrap the [Widget]s returned from the
  /// [error] and [loading] callbacks in a [SliverToBoxAdapter].
  final bool isSliver;

  @override
  Widget build(final BuildContext context) => value.when(
        data: data,
        loading: () => _SliverAdapter(
          isSliver: isSliver,
          subject: loading?.call() ?? defaultLoadingBehavior(),
        ),
        error: (
          final Object err,
          final StackTrace stackTrace,
        ) =>
            _SliverAdapter(
          isSliver: isSliver,
          subject: error?.call(err, stackTrace) ??
              defaultErrorBehavior(err, stackTrace),
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<AsyncValue<T>>('value', value))
      ..add(DiagnosticsProperty<bool>('isSliver', isSliver))
      ..add(
        ObjectFlagProperty<AsyncValueWidgetErrorCallback?>.has(
          'error',
          error,
        ),
      )
      ..add(
        ObjectFlagProperty<AsyncValueWidgetLoadingCallback?>.has(
          'loading',
          loading,
        ),
      )
      ..add(
        ObjectFlagProperty<AsyncValueWidgetDataCallback<T>>.has(
          'data',
          data,
        ),
      );
  }
}

class _SliverAdapter extends StatelessWidget {
  const _SliverAdapter({
    required this.isSliver,
    required this.subject,
  });

  final bool isSliver;
  final Widget subject;

  @override
  Widget build(final BuildContext context) =>
      isSliver ? SliverToBoxAdapter(child: subject) : subject;

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isSliver', isSliver));
  }
}

/// The contract signed by [AsyncValueWidgetBase] implementers to provide a
/// default fallback behavior for the `loading` and `error` state handlers.
abstract class AsyncValueDefaultStateRepresentation {
  /// Fallback `loading` behavior.
  abstract final AsyncValueWidgetLoadingCallback defaultLoadingBehavior;

  /// Fallback `error` behavior.
  abstract final AsyncValueWidgetErrorCallback defaultErrorBehavior;
}

/// Signature for the `data` handler of [AsyncValueX.when] that receives a
/// [value] of type [T] from [AsyncValue] and returns a [Widget].
typedef AsyncValueWidgetDataCallback<T> = Widget Function(T value);

/// Signature for the `loading` handler of [AsyncValueX.when] that returns a
/// [Widget].
typedef AsyncValueWidgetLoadingCallback = Widget Function();

/// Signature for the `error` handler of [AsyncValueX.when] that receives an
/// [error] of type [Object] and a [stackTrace] of type [StackTrace] and returns
/// a [Widget].
typedef AsyncValueWidgetErrorCallback = Widget Function(
  Object error,
  StackTrace stackTrace,
);
