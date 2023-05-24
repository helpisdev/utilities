/// Throws an [UnsupportedError] indicating that the URL path strategy
/// cannot be used on the current platform.
void usePathUrlStrategy() =>
    throw UnsupportedError('Cannot use url strategy on this platform');
