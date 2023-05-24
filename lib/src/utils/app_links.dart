import 'dart:async';

import 'package:app_links/app_links.dart';

export 'package:app_links/app_links.dart';

/// Signature for a callback function that takes a [Uri] and returns `void`.
typedef AppLinkSubscriptionCallback = void Function(Uri uri);

/// DeepLinks extends the [AppLinks] class of the `app_links` package.
///
/// It provides:
/// - [initial] -> Returns the initial app link [Uri].
/// - [latest] -> Returns the latest app link [Uri].
/// - [subscribe] -> Subscribes to the [uriLinkStream] and calls the provided
///   [AppLinkSubscriptionCallback] listener function whenever a new [Uri] is
///   available.
class DeepLinks extends AppLinks {
  /// Returns the initial app link [Uri].
  Future<Uri?> get initial async => getInitialAppLink();

  /// Returns the latest app link [Uri].
  Future<Uri?> get latest async => getLatestAppLink();

  /// Subscribes to the [uriLinkStream] and calls the provided
  /// [AppLinkSubscriptionCallback] listener function whenever a new [Uri] is
  /// available.
  StreamSubscription<Uri> subscribe(
    final AppLinkSubscriptionCallback listener,
  ) =>
      uriLinkStream.listen(listener);
}
