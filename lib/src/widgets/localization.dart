import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../geo/language.dart';

/// The [Localizations] widget provides localization to its descendants.
///
/// The [locale] parameter specifies the locale to use for localization. If
/// `null`, the system locale is used.
///
/// The [child] parameter specifies the widget subtree to provide localization
/// for.
///
/// The [key] parameter specifies the [GlobalLocalizationsKey] used to provide
/// locale changes to descendant [LocalizationsProvider] widgets.
///
/// Example:
/// ```dart
/// Localizations(
///   locale: const Locale('es', 'ES'),
///   child: MyApp()
/// )
/// ```
///
/// This will provide Spanish localization to the `MyApp` widget and all its
/// descendants.
class Localizations extends StatefulWidget {
  const Localizations({
    required this.child,
    this.locale,
    GlobalLocalizationsKey super.key = const GlobalLocalizationsKey(),
  });

  /// Specifies the [GlobalLocalizationsKey] used to provide
  /// locale changes to descendant [LocalizationsProvider] widgets.
  @override
  GlobalLocalizationsKey get key => super.key! as GlobalLocalizationsKey;

  /// Specifies the widget subtree to provide localization for.
  final Widget child;

  /// Specifies the locale to use for localization. If `null`, the system locale
  /// is used.
  final Locale? locale;

  @override
  State<Localizations> createState() => _LocalizationsState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Locale?>('locale', locale));
  }
}

/// The [_LocalizationsState] class provides locale state and logic to
/// [Localizations] widgets.
///
/// The [locale] parameter specifies the currently active locale. It is
/// initialized to either:
/// - The [Localizations.locale] parameter passed to the [Localizations] widget.
/// - The system locale if [Localizations.locale] is `null`.
///
/// The [switchLanguage] method updates the [locale] and rebuilds the widget
/// subtree. It is called when a locale change is requested by descendant
/// [LocalizationsProvider] widgets.
///
/// The [build] method returns a [LocalizationsProvider] widget which provides
/// the [locale] to descendant widgets.
class _LocalizationsState extends State<Localizations> {
  /// Specifies the currently active locale. It is
  /// initialized to either:
  /// - The [Localizations.locale] parameter passed to the [Localizations]
  ///   widget.
  /// - The system locale if [Localizations.locale] is `null`.
  late Locale locale;

  @override
  void initState() {
    super.initState();
    locale = widget.locale ??
        Locale(Intl.systemLocale.substring(0, Intl.systemLocale.indexOf('_')));
  }

  /// Updates the [locale] and rebuilds the widget
  /// subtree. It is called when a locale change is requested by descendant
  /// [LocalizationsProvider] widgets.
  void switchLanguage(final Locale locale) =>
      setState(() => this.locale = locale);

  @override
  Widget build(final BuildContext context) => LocalizationsProvider(
        localizationsKey: widget.key,
        locale: locale,
        child: widget.child,
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Locale?>('locale', locale));
  }
}

/// The [LocalizationsProvider] widget provides localization to its descendants.
///
/// - The [locale] parameter specifies the locale to use for localization.
/// - The [child] parameter specifies the widget subtree to provide localization
///   for.
/// - The [localizationsKey] parameter specifies the [GlobalLocalizationsKey]
///   used to provide locale changes to descendant [LocalizationsProvider]
///   widgets.
///
/// - The [maybeLanguage] getter returns the [Language] for the [locale], if it
///   exists. Otherwise, it returns `null`.
/// - The [language] getter returns the [Language] for the [locale]. If the
///   [locale] maps to an unknown language, an [UnsupportedError] is thrown.
///
/// - The [maybeOf] static method returns the [LocalizationsProvider] for the
///   given [BuildContext], if it exists. Otherwise, it returns `null`.
/// - The [of] static method returns the [LocalizationsProvider] for the given
///   [BuildContext]. If no [LocalizationsProvider] is found, an
///   [AssertionError] is thrown.
///
/// - The [switchLanguage] method requests a locale change using the
///   [localizationsKey].
/// - The [updateShouldNotify] method returns `true` if the [locale] has
///   changed, indicating the widget should be rebuilt.
class LocalizationsProvider extends InheritedWidget {
  const LocalizationsProvider({
    required super.child,
    required this.locale,
    required this.localizationsKey,
    super.key,
  });

  /// Specifies the locale to use for localization.
  final Locale locale;

  /// Specifies the [GlobalLocalizationsKey] used to provide locale changes to
  /// descendant [LocalizationsProvider] widgets.
  final GlobalLocalizationsKey localizationsKey;

  /// Returns the [Language] for the [locale], if it exists. Otherwise, it
  /// returns `null`.
  Language? get maybeLanguage => Language.byLocale(locale);

  /// Returns the [Language] for the [locale]. If the [locale] maps to an
  /// unknown language, an [UnsupportedError] is thrown.
  Language get language =>
      maybeLanguage ??
      (throw UnsupportedError(
        'The current locale maps to an unknown language - consider making a '
        'pull request to add support for `${locale.languageCode}`.',
      ));

  /// Returns the [LocalizationsProvider] for the given [BuildContext], if it
  /// exists. Otherwise, it returns `null`.
  static LocalizationsProvider? maybeOf(final BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LocalizationsProvider>();

  /// Returns the [LocalizationsProvider] for the given [BuildContext]. If no
  /// [LocalizationsProvider] is found, an [AssertionError] is thrown.
  static LocalizationsProvider of(final BuildContext context) {
    final LocalizationsProvider? result = maybeOf(context);
    assert(result != null, 'No LocalizationsProvider found in context');
    return result!;
  }

  /// Requests a locale change using the [localizationsKey].
  void switchLanguage(final Locale locale) {
    final _LocalizationsState? currentState = localizationsKey.currentState;
    currentState?.switchLanguage(locale);
  }

  /// Returns `true` if the [locale] has changed, indicating the widget should
  /// be rebuilt.
  @override
  bool updateShouldNotify(final LocalizationsProvider oldWidget) =>
      locale != oldWidget.locale;

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(
        DiagnosticsProperty<GlobalLocalizationsKey>(
          'localizationsKey',
          localizationsKey,
        ),
      )
      ..add(EnumProperty<Language?>('language', language))
      ..add(EnumProperty<Language?>('maybeLanguage', maybeLanguage));
  }
}

class GlobalLocalizationsKey extends GlobalKey<_LocalizationsState> {
  const GlobalLocalizationsKey() : super.constructor();
}
