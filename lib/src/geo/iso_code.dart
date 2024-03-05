// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'country.dart';

part 'iso_code.g.dart';

/// Enum representing ISO country codes.
///
/// The ISO 3166-1 alpha-2 codes are two-letter country codes defined in ISO
/// 3166-1, part of the ISO 3166 standard published by the International
/// Organization for Standardization (ISO), to represent countries, dependent
/// territories, and special areas of geographical interest.
///
/// Example:
/// ```dart
/// IsoCode.US // United States
/// IsoCode.GB // United Kingdom
/// IsoCode.FR // France
/// ```
@JsonEnum(alwaysCreate: true)
enum IsoCode {
  AC,
  AD,
  AE,
  AF,
  AG,
  AI,
  AL,
  AM,
  AO,
  AR,
  AS,
  AT,
  AU,
  AW,
  AX,
  AZ,
  BA,
  BB,
  BD,
  BE,
  BF,
  BG,
  BH,
  BI,
  BJ,
  BL,
  BM,
  BN,
  BO,
  BQ,
  BR,
  BS,
  BT,
  BW,
  BY,
  BZ,
  CA,
  CC,
  CD,
  CF,
  CG,
  CH,
  CI,
  CK,
  CL,
  CM,
  CN,
  CO,
  CR,
  CU,
  CV,
  CW,
  CX,
  CY,
  CZ,
  DE,
  DJ,
  DK,
  DM,
  DO,
  DZ,
  EC,
  EE,
  EG,
  EH,
  ER,
  ES,
  ET,
  FI,
  FJ,
  FK,
  FM,
  FO,
  FR,
  GA,
  GB,
  GD,
  GE,
  GF,
  GG,
  GH,
  GI,
  GL,
  GM,
  GN,
  GP,
  GQ,
  GR,
  GT,
  GU,
  GW,
  GY,
  HK,
  HN,
  HR,
  HT,
  HU,
  ID,
  IE,
  IL,
  IM,
  IN,
  IO,
  IQ,
  IR,
  IS,
  IT,
  JE,
  JM,
  JO,
  JP,
  KE,
  KG,
  KH,
  KI,
  KM,
  KN,
  KP,
  KR,
  KW,
  KY,
  KZ,
  LA,
  LB,
  LC,
  LI,
  LK,
  LR,
  LS,
  LT,
  LU,
  LV,
  LY,
  MA,
  MC,
  MD,
  ME,
  MF,
  MG,
  MH,
  MK,
  ML,
  MM,
  MN,
  MO,
  MP,
  MQ,
  MR,
  MS,
  MT,
  MU,
  MV,
  MW,
  MX,
  MY,
  MZ,
  NA,
  NC,
  NE,
  NF,
  NG,
  NI,
  NL,
  NO,
  NP,
  NR,
  NU,
  NZ,
  OM,
  PA,
  PE,
  PF,
  PG,
  PH,
  PK,
  PL,
  PM,
  PR,
  PS,
  PT,
  PW,
  PY,
  QA,
  RE,
  RO,
  RS,
  RU,
  RW,
  SA,
  SB,
  SC,
  SD,
  SE,
  SG,
  SH,
  SI,
  SJ,
  SK,
  SL,
  SM,
  SN,
  SO,
  SR,
  SS,
  ST,
  SV,
  SX,
  SY,
  SZ,
  TA,
  TC,
  TD,
  TG,
  TH,
  TJ,
  TK,
  TL,
  TM,
  TN,
  TO,
  TR,
  TT,
  TV,
  TW,
  TZ,
  UA,
  UG,
  US,
  UY,
  UZ,
  VA,
  VC,
  VE,
  VG,
  VI,
  VN,
  VU,
  WF,
  WS,
  XK,
  YE,
  YT,
  ZA,
  ZM,
  ZW;

  const IsoCode();

  /// Returns the country corresponding to this ISO code.
  Country get country => Country.byIsoCode(this)!;

  /// Returns the ISO code corresponding to this [name].
  static IsoCode? byName(final String name) {
    return IsoCode.values.firstWhereOrNull(
      (final IsoCode iso) => iso.name == name.toUpperCase(),
    );
  }
}

Iterable<String> get isoCodeEnumValues => _$IsoCodeEnumMap.values;
Map<IsoCode, String> get isoCodeEnumMap => _$IsoCodeEnumMap;
String? isoCodeToJson(final IsoCode? isoCode) => isoCodeEnumMap[isoCode];

IsoCode? isoCodeFromJson(final Object? isoCode) {
  if (isoCode is IsoCode) {
    return isoCode;
  }
  if (isoCode is num) {
    return IsoCode.values.elementAtOrNull(isoCode.toInt());
  }
  if (isoCode is int) {
    return IsoCode.values.elementAtOrNull(isoCode);
  }
  if (isoCode is String) {
    return IsoCode.byName(isoCode);
  }

  return null;
}
