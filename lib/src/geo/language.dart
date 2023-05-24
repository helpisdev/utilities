// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:ui';

import 'package:collection/collection.dart';

import '../utils/serializable.dart';
import '../utils/typedefs.dart';

/// Enum representing supported languages.
///
/// Each language has a corresponding [Locale] and [name].
///
/// Example:
/// ```dart
/// Language.EN // English
/// ```
enum Language implements Serializable<Language> {
  AF(Locale('af')),
  AM(Locale('am')),
  AR(Locale('ar')),
  AY(Locale('ay')),
  AZ(Locale('az')),
  BE(Locale('be')),
  BG(Locale('bg')),
  BI(Locale('bi')),
  BN(Locale('bn')),
  BS(Locale('bs')),
  CA(Locale('ca')),
  CH(Locale('ch')),
  CS(Locale('cs')),
  DA(Locale('da')),
  DE(Locale('de')),
  DV(Locale('dv')),
  DZ(Locale('dz')),
  EL(Locale('el')),
  EN(Locale('en')),
  ES(Locale('es')),
  ET(Locale('et')),
  EU(Locale('eu')),
  FA(Locale('fa')),
  FF(Locale('ff')),
  FI(Locale('fi')),
  FJ(Locale('fj')),
  FO(Locale('fo')),
  FR(Locale('fr')),
  GA(Locale('ga')),
  GL(Locale('gl')),
  GN(Locale('gn')),
  GV(Locale('gv')),
  HE(Locale('he')),
  HI(Locale('hi')),
  HR(Locale('hr')),
  HT(Locale('ht')),
  HU(Locale('hu')),
  HY(Locale('hy')),
  ID(Locale('id')),
  IS(Locale('is')),
  IT(Locale('it')),
  JA(Locale('ja')),
  KA(Locale('ka')),
  KG(Locale('kg')),
  KK(Locale('kk')),
  KL(Locale('kl')),
  KM(Locale('km')),
  KO(Locale('ko')),
  KU(Locale('ku')),
  KY(Locale('ky')),
  LA(Locale('la')),
  LB(Locale('lb')),
  LN(Locale('ln')),
  LO(Locale('lo')),
  LT(Locale('lt')),
  LU(Locale('lu')),
  LV(Locale('lv')),
  MG(Locale('mg')),
  MH(Locale('mh')),
  MI(Locale('mi')),
  MK(Locale('mk')),
  MN(Locale('mn')),
  MS(Locale('ms')),
  MT(Locale('mt')),
  MY(Locale('my')),
  NA(Locale('na')),
  NB(Locale('nb')),
  ND(Locale('nd')),
  NE(Locale('ne')),
  NL(Locale('nl')),
  NN(Locale('nn')),
  NO(Locale('no')),
  NR(Locale('nr')),
  NY(Locale('ny')),
  OC(Locale('oc')),
  PA(Locale('pa')),
  PL(Locale('pl')),
  PS(Locale('ps')),
  PT(Locale('pt')),
  QU(Locale('qu')),
  RN(Locale('rn')),
  RO(Locale('ro')),
  RU(Locale('ru')),
  RW(Locale('rw')),
  SG(Locale('sg')),
  SI(Locale('si')),
  SK(Locale('sk')),
  SL(Locale('sl')),
  SM(Locale('sm')),
  SN(Locale('sn')),
  SO(Locale('so')),
  SQ(Locale('sq')),
  SR(Locale('sr')),
  SS(Locale('ss')),
  ST(Locale('st')),
  SV(Locale('sv')),
  SW(Locale('sw')),
  TA(Locale('ta')),
  TG(Locale('tg')),
  TH(Locale('th')),
  TI(Locale('ti')),
  TK(Locale('tk')),
  TN(Locale('tn')),
  TO(Locale('to')),
  TR(Locale('tr')),
  TS(Locale('ts')),
  UK(Locale('uk')),
  UR(Locale('ur')),
  UZ(Locale('uz')),
  VE(Locale('ve')),
  VI(Locale('vi')),
  XH(Locale('xh')),
  ZH(Locale('zh')),
  ZU(Locale('zu'));

  const Language(this.locale);

  /// The locale associated with this language.
  final Locale locale;

  @override
  String serialize({final bool deep = true}) => name;

  @override
  Language? deserialize(final dynamic obj) {
    JSON? json;
    try {
      if (obj is JSON) {
        json = obj;
      } else {
        json = jsonDecode(obj.toString()) as JSON;
      }
    } on FormatException {
      // Abort gracefully...
    }
    final Language? continent = switch (obj.runtimeType) {
      Language => obj,
      String => Language.values.singleWhereOrNull(
          (final Language lang) =>
              lang.name == obj.toString().toUpperCase() ||
              lang.locale.languageCode.toUpperCase() ==
                  obj.toString().toUpperCase(),
        ),
      Locale => byLocale(obj),
      // JSON or null
      _ => Language.values.asNameMap()[obj.toString().toUpperCase()] ??
          json?['language'] ??
          json?['locale'],
    };
    return continent;
  }

  /// Returns the [Language] enum value corresponding to the given [locale].
  ///
  /// Checks if [locale] is a [Locale] object, and if so returns the [Language]
  /// with the same [Locale]. Otherwise, checks if [locale] matches a
  /// [Language.locale.languageCode] and returns that [Language].
  ///
  /// Example:
  /// ```dart
  /// final Language lang = Language.byLocale('en'); // Returns Language.EN
  /// final Language lang = Language.byLocale(Locale('zh')); // Returns Language.ZH
  /// ```
  ///
  /// Returns null if no matching [Language] is found.
  static Language? byLocale(final dynamic locale) =>
      Language.values.singleWhereOrNull(
        (final Language lang) => locale is Locale
            ? lang.locale == locale
            : lang.locale.languageCode.toUpperCase() ==
                locale.toString().toUpperCase(),
      );
}
