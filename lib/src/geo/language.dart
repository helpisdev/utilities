// ignore_for_file: constant_identifier_names

import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

/// Enum representing supported languages.
///
/// Each language has a corresponding [Locale] and [name].
///
/// Example:
/// ```dart
/// Language.EN // English
/// ```
@JsonEnum(
  fieldRename: FieldRename.snake,
  alwaysCreate: true,
)
enum Language {
  @JsonValue('af')
  AF(Locale('af')),
  @JsonValue('am')
  AM(Locale('am')),
  @JsonValue('ar')
  AR(Locale('ar')),
  @JsonValue('ay')
  AY(Locale('ay')),
  @JsonValue('az')
  AZ(Locale('az')),
  @JsonValue('be')
  BE(Locale('be')),
  @JsonValue('bg')
  BG(Locale('bg')),
  @JsonValue('bi')
  BI(Locale('bi')),
  @JsonValue('bn')
  BN(Locale('bn')),
  @JsonValue('bs')
  BS(Locale('bs')),
  @JsonValue('ca')
  CA(Locale('ca')),
  @JsonValue('ch')
  CH(Locale('ch')),
  @JsonValue('cs')
  CS(Locale('cs')),
  @JsonValue('da')
  DA(Locale('da')),
  @JsonValue('de')
  DE(Locale('de')),
  @JsonValue('dv')
  DV(Locale('dv')),
  @JsonValue('dz')
  DZ(Locale('dz')),
  @JsonValue('el')
  EL(Locale('el')),
  @JsonValue('en')
  EN(Locale('en')),
  @JsonValue('es')
  ES(Locale('es')),
  @JsonValue('et')
  ET(Locale('et')),
  @JsonValue('eu')
  EU(Locale('eu')),
  @JsonValue('fa')
  FA(Locale('fa')),
  @JsonValue('ff')
  FF(Locale('ff')),
  @JsonValue('fi')
  FI(Locale('fi')),
  @JsonValue('fj')
  FJ(Locale('fj')),
  @JsonValue('fo')
  FO(Locale('fo')),
  @JsonValue('fr')
  FR(Locale('fr')),
  @JsonValue('ga')
  GA(Locale('ga')),
  @JsonValue('gl')
  GL(Locale('gl')),
  @JsonValue('gn')
  GN(Locale('gn')),
  @JsonValue('gv')
  GV(Locale('gv')),
  @JsonValue('he')
  HE(Locale('he')),
  @JsonValue('hi')
  HI(Locale('hi')),
  @JsonValue('hr')
  HR(Locale('hr')),
  @JsonValue('ht')
  HT(Locale('ht')),
  @JsonValue('hu')
  HU(Locale('hu')),
  @JsonValue('hy')
  HY(Locale('hy')),
  @JsonValue('id')
  ID(Locale('id')),
  @JsonValue('is')
  IS(Locale('is')),
  @JsonValue('it')
  IT(Locale('it')),
  @JsonValue('ja')
  JA(Locale('ja')),
  @JsonValue('ka')
  KA(Locale('ka')),
  @JsonValue('kg')
  KG(Locale('kg')),
  @JsonValue('kk')
  KK(Locale('kk')),
  @JsonValue('kl')
  KL(Locale('kl')),
  @JsonValue('km')
  KM(Locale('km')),
  @JsonValue('ko')
  KO(Locale('ko')),
  @JsonValue('ku')
  KU(Locale('ku')),
  @JsonValue('ky')
  KY(Locale('ky')),
  @JsonValue('la')
  LA(Locale('la')),
  @JsonValue('lb')
  LB(Locale('lb')),
  @JsonValue('ln')
  LN(Locale('ln')),
  @JsonValue('lo')
  LO(Locale('lo')),
  @JsonValue('lt')
  LT(Locale('lt')),
  @JsonValue('lu')
  LU(Locale('lu')),
  @JsonValue('lv')
  LV(Locale('lv')),
  @JsonValue('mg')
  MG(Locale('mg')),
  @JsonValue('mh')
  MH(Locale('mh')),
  @JsonValue('mi')
  MI(Locale('mi')),
  @JsonValue('mk')
  MK(Locale('mk')),
  @JsonValue('mn')
  MN(Locale('mn')),
  @JsonValue('ms')
  MS(Locale('ms')),
  @JsonValue('mt')
  MT(Locale('mt')),
  @JsonValue('my')
  MY(Locale('my')),
  @JsonValue('na')
  NA(Locale('na')),
  @JsonValue('nb')
  NB(Locale('nb')),
  @JsonValue('nd')
  ND(Locale('nd')),
  @JsonValue('ne')
  NE(Locale('ne')),
  @JsonValue('nl')
  NL(Locale('nl')),
  @JsonValue('nn')
  NN(Locale('nn')),
  @JsonValue('no')
  NO(Locale('no')),
  @JsonValue('nr')
  NR(Locale('nr')),
  @JsonValue('ny')
  NY(Locale('ny')),
  @JsonValue('oc')
  OC(Locale('oc')),
  @JsonValue('pa')
  PA(Locale('pa')),
  @JsonValue('pl')
  PL(Locale('pl')),
  @JsonValue('ps')
  PS(Locale('ps')),
  @JsonValue('pt')
  PT(Locale('pt')),
  @JsonValue('qu')
  QU(Locale('qu')),
  @JsonValue('rn')
  RN(Locale('rn')),
  @JsonValue('ro')
  RO(Locale('ro')),
  @JsonValue('ru')
  RU(Locale('ru')),
  @JsonValue('rw')
  RW(Locale('rw')),
  @JsonValue('sg')
  SG(Locale('sg')),
  @JsonValue('si')
  SI(Locale('si')),
  @JsonValue('sk')
  SK(Locale('sk')),
  @JsonValue('sl')
  SL(Locale('sl')),
  @JsonValue('sm')
  SM(Locale('sm')),
  @JsonValue('sn')
  SN(Locale('sn')),
  @JsonValue('so')
  SO(Locale('so')),
  @JsonValue('sq')
  SQ(Locale('sq')),
  @JsonValue('sr')
  SR(Locale('sr')),
  @JsonValue('ss')
  SS(Locale('ss')),
  @JsonValue('st')
  ST(Locale('st')),
  @JsonValue('sv')
  SV(Locale('sv')),
  @JsonValue('sw')
  SW(Locale('sw')),
  @JsonValue('ta')
  TA(Locale('ta')),
  @JsonValue('tg')
  TG(Locale('tg')),
  @JsonValue('th')
  TH(Locale('th')),
  @JsonValue('ti')
  TI(Locale('ti')),
  @JsonValue('tk')
  TK(Locale('tk')),
  @JsonValue('tn')
  TN(Locale('tn')),
  @JsonValue('to')
  TO(Locale('to')),
  @JsonValue('tr')
  TR(Locale('tr')),
  @JsonValue('ts')
  TS(Locale('ts')),
  @JsonValue('uk')
  UK(Locale('uk')),
  @JsonValue('ur')
  UR(Locale('ur')),
  @JsonValue('uz')
  UZ(Locale('uz')),
  @JsonValue('ve')
  VE(Locale('ve')),
  @JsonValue('vi')
  VI(Locale('vi')),
  @JsonValue('xh')
  XH(Locale('xh')),
  @JsonValue('zh')
  ZH(Locale('zh')),
  @JsonValue('zu')
  ZU(Locale('zu'));

  const Language(this.locale);

  /// The locale associated with this language.
  final Locale locale;

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
