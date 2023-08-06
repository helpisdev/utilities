library utilities.routing;

import 'package:go_router/go_router.dart';

export 'src/routing/routing.dart';

void initializeGoRouter() => GoRouter.optionURLReflectsImperativeAPIs = true;
