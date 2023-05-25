import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'typedefs.dart';

class UtilitiesRouter extends GoRouter {
  UtilitiesRouter({
    required this.screenRoutes,
    required super.routes,
    super.errorPageBuilder,
    super.errorBuilder,
    super.redirect,
    super.refreshListenable,
    super.redirectLimit,
    super.routerNeglect,
    super.initialLocation,
    super.initialExtra,
    super.observers,
    super.debugLogDiagnostics,
    super.navigatorKey,
    super.restorationScopeId,
  })  : assert(
          screenRoutes.length == routes.length,
          'routes and screenRoutes should be equal in length.',
        ),
        super();

  final Set<ScreenRoute> screenRoutes;

  /// Find the current [UtilitiesRouter] in the widget tree.
  static UtilitiesRouter of(final BuildContext context) =>
      GoRouter.of(context) as UtilitiesRouter;

  /// The current [UtilitiesRouter] in the widget tree, if any.
  static UtilitiesRouter? maybeOf(final BuildContext context) =>
      GoRouter.maybeOf(context) as UtilitiesRouter?;
}
