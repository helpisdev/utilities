// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

/// Enum representing world currencies with their `ISO 4217` codes and symbols.
///
/// - [AED] -> Emirati Dirham, symbol: `د.إ`
/// - [AFN] -> Afghan Afghani, symbol: `؋`
/// - [ALL] -> Albanian Lek, symbol: `Lek`
/// - [AMD] -> Armenian Dram, symbol: `֏`
/// - [ANG] -> Netherlands Antillean Guilder, symbol: `ƒ`
/// - [AOA] -> Angolan Kwanza, symbol: `Kz`
/// - [ARS] -> Argentinian Peso, symbol: `Arg$`
/// - [AUD] -> Australian Dollar, symbol: `A$`
/// - [AWG] -> Aruban Guilder, symbol: `ƒ`
/// - [AZN] -> Azerbaijani Manat, symbol: `₼`
/// - [BAM] -> Bosnia and Herzegovina Convertible Mark, symbol: `KM`
/// - [BBD] -> Barbadian Dollar, symbol: `Bds$`
/// - [BDT] -> Bangladeshi Taka, symbol: `৳`
/// - [BGN] -> Bulgarian Lev, symbol: `лв`
/// - [BHD] -> Bahraini Dinar, symbol: `.د.ب`
/// - [BIF] -> Burundian Franc, symbol: `FBu`
/// - [BMD] -> Bermudian Dollar, symbol: `Ber$`
/// - [BND] -> Brunei Darussalam Dollar, symbol: `B$`
/// - [BOB] -> Bolivian Bolíviano, symbol: `$b`
/// - [BRL] -> Brazilian Real, symbol: `R$`
/// - [BSD] -> Bahamian Dollar, symbol: `B$`
/// - [BTN] -> Bhutanese Ngultrum, symbol: `Nu`
/// - [BWP] -> Botswana Pula, symbol: `P`
/// - [BYN] -> Belarusian Ruble, symbol: `Br`
/// - [BZD] -> Belize Dollar, symbol: `BZ$`
/// - [CAD] -> Canadian Dollar, symbol: `Can$`
/// - [CDF] -> Congolese Franc, symbol: `FC`
/// - [CHF] -> Swiss Franc, symbol: `CHF`
/// - [CLF] -> Chilean Peso, symbol: `Ch$`
/// - [CNY] -> Chinese Yuan Renminbi, symbol: `¥`
/// - [COP] -> Colombiam Peso, symbol: `Col$`
/// - [CRC] -> Costa Rican Colón, symbol: `₡`
/// - [CUP] -> Cuban Peso, symbol: `₱`
/// - [CVE] -> Cape Verdean Escudo, symbol: `Esc`
/// - [CZK] -> Czech Koruna, symbol: `Kč`
/// - [DJF] -> Djiboutian Franc, symbol: `Fdj`
/// - [DKK] -> Danish Krone, symbol: `kr`
/// - [DOP] -> Dominican Republic Peso, symbol: `RD$`
/// - [DZD] -> Algerian Dinar, symbol: `.د.ج`
/// - [EGP] -> Egyptian Pound, symbol: `£`
/// - [ERN] -> Eritrean Nakfa, symbol: `Nfk`
/// - [ETB] -> Ethiopian Birr, symbol: `ብር`
/// - [EUR] -> Euro, symbol: `€`
/// - [FJD] -> Fijian Dollar, symbol: `Fj$`
/// - [FKP] -> Falkland Islands (Malvinas) Pound, symbol: `£`
/// - [GBP] -> United Kingdom Pound, symbol: `£`
/// - [GEL] -> Georgian Lari, symbol: `₾`
/// - [GGP] -> Guernsey Pound, symbol: `£`
/// - [GHS] -> Ghanaian Cedi, symbol: `¢`
/// - [GIP] -> Gibraltar Pound, symbol: `£`
/// - [GMD] -> Gambian Dalasi, symbol: `D`
/// - [GNF] -> Guinean Franc, symbol: `FG`
/// - [GTQ] -> Guatemalan Quetzal, symbol: `Q`
/// - [GYD] -> Guyanese Dollar, symbol: `G$`
/// - [HKD] -> Hong Kong Dollar, symbol: `HK$/元/圓`
/// - [HNL] -> Honduran Lempira, symbol: L
/// - [HRK] -> Croatian Kuna, symbol: kn
/// - [HTG] -> Haitian Gourde, symbol: G
/// - [HUF] -> Hungarian Forint, symbol: Ft
/// - [IDR] -> Indonesian Rupiah, symbol: Rp
/// - [ILS] -> Israeli New Shekel, symbol: ₪
/// - [IMP] -> Manx Pound, symbol: £
/// - [INR] -> Indian Rupee, symbol: ₹
/// - [IQD] -> Iraqi Dinar, symbol: .د.ع
/// - [IRR] -> Iranian Rial, symbol: ریال
/// - [ISK] -> Icelandic Króna, symbol: kr
/// - [JEP] -> Jersey Pound, symbol: £
/// - [JMD] -> Jamaican Dollar, symbol: J$
/// - [JOD] -> Jordanian Dinar, symbol: .د.أ
/// - [JPY] -> Japanese Yen, symbol: ¥
/// - [KES] -> Kenyan Shilling, symbol: KSh
/// - [KGS] -> Kyrgyz Som, symbol: лв
/// - [KHR] -> Cambodian Riel, symbol: ៛
/// - [KMF] -> Comorian Franc, symbol: FC
/// - [KPW] -> North Korean Won, symbol: ₩
/// - [KRW] -> South Korean Won, symbol: ₩
/// - [KWD] -> Kuwaiti Dinar, symbol: .د.ك
/// - [KYD] -> Cayman Islands Dollar, symbol: CI$
/// - [KZT] -> Kazakhstani Tenge, symbol: лв
/// - [LAK] -> Lao Kip, symbol: ₭
/// - [LBP] -> Lebanese Pound, symbol: £
/// - [LKR] -> Sri Lankan Rupee, symbol: Rs
/// - [LRD] -> Liberian Dollar, symbol: L$
/// - [LSL] -> Lesotho Loti, symbol: L⁄M
/// - [LYD] -> Libyan Dinar, symbol: .د.ل
/// - [MAD] -> Moroccan Dirham, symbol: .د.م
/// - [MDL] -> Moldovan Leu, symbol: leu
/// - [MGA] -> Malagasy Ariary, symbol: Ar
/// - [MKD] -> Macedonian Denar, symbol: ден
/// - [MMK] -> Myanmar Kyat, symbol: K⁄Ks
/// - [MNT] -> Mongolian Tughrik, symbol: ₮
/// - [MOP] -> Macanese Pataca, symbol: $
/// - [MRU] -> Mauritanian Ouguiya, symbol: UM
/// - [MUR] -> Mauritian Rupee, symbol: Rs
/// - [MVR] -> Maldivian Rufiyaa, symbol: ރ
/// - [MWK] -> Malawian Kwacha, symbol: MK
/// - [MXN] -> Mexican Peso, symbol: Mex$
/// - [MYR] -> Malaysian Ringgit, symbol: RM
/// - [MZN] -> Mozambican Metical, symbol: MT
/// - [NAD] -> Namibian Dollar, symbol: N$
/// - [NGN] -> Nigerian Naira, symbol: ₦
/// - [NIO] -> Nicaraguan Córdoba, symbol: C$
/// - [NOK] -> Norwegian Krone, symbol: kr
/// - [NPR] -> Nepalese Rupee, symbol: Rs
/// - [NZD] -> New Zealand Dollar, symbol: $NZ
/// - [OMR] -> Omani Rial, symbol: ریال
/// - [PAB] -> Panamanian Balboa, symbol: B/.
/// - [PEN] -> Peruvian Sol, symbol: S/.
/// - [PGK] -> Papua New Guinean Kina, symbol: K
/// - [PHP] -> Philippine Peso, symbol: ₱
/// - [PKR] -> Pakistani Rupee, symbol: Rs
/// - [PLN] -> Polish Zloty, symbol: zł
/// - [PYG] -> Paraguayan Guarani, symbol: ₲
/// - [QAR] -> Qatari Riyal, symbol: ریال
/// - [RON] -> Romanian Leu, symbol: lei
/// - [RSD] -> Serbian Dinar, symbol: Дин.
/// - [RUB] -> Russian Ruble, symbol: ₽
/// - [RWF] -> Rwandan Franc, symbol: FRw
/// - [SAR] -> Saudi Riyal, symbol: ریال
/// - [SBD] -> Solomon Islands Dollar, symbol: SI$
/// - [SCR] -> Seychellois Rupee, symbol: Rs
/// - [SDG] -> Sudanese Pound, symbol: .ج.س
/// - [SEK] -> Swedish Krona, symbol: kr
/// - [SGD] -> Singapore Dollar, symbol: S$
/// - [SHP] -> Saint Helena Pound, symbol: £
/// - [SLL] -> Sierra Leonean Leone, symbol: Le
/// - [SOS] -> Somali Shilling, symbol: S
/// - [SRD] -> Surinamese Dollar, symbol: SRD$
/// - [SSP] -> South Sudanese Pound, symbol: SSP
/// - [STN] -> São Tomé and Príncipe Dobra, symbol: Db
/// - [SVC] -> Salvadoran Colón, symbol: ₡
/// - [SYP] -> Syrian Pound, symbol: £
/// - [SZL] -> Swazi Lilangeni, symbol: L⁄E
/// - [THB] -> Thai Baht, symbol: ฿
/// - [TJS] -> Tajikistani Somoni, symbol: SM
/// - [TMT] -> Turkmenistani Manat, symbol: m
/// - [TND] -> Tunisian Dinar, symbol: .د.ت
/// - [TOP] -> Tongan Paʻanga, symbol: T$
/// - [TRY] -> Turkish Lira, symbol: ₺
/// - [TTD] -> Trinidad and Tobago Dollar, symbol: TT$
/// - [TVD] -> Tuvaluan Dollar, symbol: TV$
/// - [TWD] -> New Taiwan Dollar, symbol: NT$/元/圓
/// - [TZS] -> Tanzanian Shilling, symbol: /=
/// - [UAH] -> Ukrainian Hryvnia, symbol: ₴
/// - [UGX] -> Ugandan Shilling, symbol: /=
/// - [USD] -> United States Dollar, symbol: $
/// - [UYU] -> Uruguayan Peso, symbol: $U
/// - [UZS] -> Uzbekistani Sum, symbol: лв
/// - [VEB] -> Venezuela Bolívar, symbol: Bs
/// - [VED] -> Venezuelan Digital Bolívar, symbol: Bs.D
/// - [VEF] -> Venezuelan Hard Bolívar (Fuerte), symbol: Bs.F
/// - [VES] -> Venezuelan Sovereign Bolívar (Soberano), symbol: Bs.S
/// - [VND] -> Vietnamese Đồng, symbol: ₫
/// - [VUV] -> Vanuatu Vatu, symbol: VT
/// - [WST] -> Samoan Tālā, symbol: $
/// - [XAF] -> Central African CFA Franc, symbol: fr.CFA
/// - [XCD] -> East Caribbean Dollar, symbol: EC$
/// - [XOF] -> West African CFA Franc, symbol: fr.CFA
/// - [XPF] -> CFP Franc, symbol: F
/// - [YER] -> Yemeni Rial, symbol: ریال
/// - [ZAR] -> South African Rand, symbol: R
/// - [ZMW] -> Zambian Kwacha, symbol: K
/// - [ZWD] -> Zimbabwean Dollar, symbol: Z$
@JsonEnum(alwaysCreate: true)
enum Currency {
  /// Emirati Dirham, symbol: `د.إ`
  AED(fullName: 'Emirati Dirham', symbol: 'د.إ'),

  /// Afghan Afghani, symbol: `؋`
  AFN(fullName: 'Afghan Afghani', symbol: '؋'),

  /// Albanian Lek, symbol: `Lek`
  ALL(fullName: 'Albanian Lek', symbol: 'Lek'),

  /// Armenian Dram, symbol: `֏`
  AMD(fullName: 'Armenian Dram', symbol: '֏'),

  /// Netherlands Antillean Guilder, symbol: `ƒ`
  ANG(fullName: 'Netherlands Antillean Guilder', symbol: 'ƒ'),

  /// Angolan Kwanza, symbol: `Kz`
  AOA(fullName: 'Angolan Kwanza', symbol: 'Kz'),

  /// Argentinian Peso, symbol: `Arg$`
  ARS(fullName: 'Argentinian Peso', symbol: r'Arg$'),

  /// Australian Dollar, symbol: `A$`
  AUD(fullName: 'Australian Dollar', symbol: r'A$'),

  /// Aruban Guilder, symbol: `ƒ`
  AWG(fullName: 'Aruban Guilder', symbol: 'ƒ'),

  /// Azerbaijani Manat, symbol: `₼`
  AZN(fullName: 'Azerbaijani Manat', symbol: '₼'),

  /// Bosnia and Herzegovina Convertible Mark, symbol: `KM`
  BAM(fullName: 'Bosnia and Herzegovina Convertible Mark', symbol: 'KM'),

  /// Barbadian Dollar, symbol: `Bds$`
  BBD(fullName: 'Barbadian Dollar', symbol: r'Bds$'),

  /// Bangladeshi Taka, symbol: `৳`
  BDT(fullName: 'Bangladeshi Taka', symbol: '৳'),

  /// Bulgarian Lev, symbol: `лв`
  BGN(fullName: 'Bulgarian Lev', symbol: 'лв'),

  /// Bahraini Dinar, symbol: `.د.ب`
  BHD(fullName: 'Bahraini Dinar', symbol: '.د.ب'),

  /// Burundian Franc, symbol: `FBu`
  BIF(fullName: 'Burundian Franc', symbol: 'FBu'),

  /// Bermudian Dollar, symbol: `Ber$`
  BMD(fullName: 'Bermudian Dollar', symbol: r'Ber$'),

  /// Brunei Darussalam Dollar, symbol: `B$`
  BND(fullName: 'Brunei Darussalam Dollar', symbol: r'B$'),

  /// Bolivian Bolíviano, symbol: `$b`
  BOB(fullName: 'Bolivian Bolíviano', symbol: r'$b'),

  /// Brazilian Real, symbol: `R$`
  BRL(fullName: 'Brazilian Real', symbol: r'R$'),

  /// Bahamian Dollar, symbol: `B$`
  BSD(fullName: 'Bahamian Dollar', symbol: r'B$'),

  /// Bhutanese Ngultrum, symbol: `Nu`
  BTN(fullName: 'Bhutanese Ngultrum', symbol: 'Nu'),

  /// Botswana Pula, symbol: `P`
  BWP(fullName: 'Botswana Pula', symbol: 'P'),

  /// Belarusian Ruble, symbol: `Br`
  BYN(fullName: 'Belarusian Ruble', symbol: 'Br'),

  /// Belize Dollar, symbol: `BZ$`
  BZD(fullName: 'Belize Dollar', symbol: r'BZ$'),

  /// Canadian Dollar, symbol: `Can$`
  CAD(fullName: 'Canadian Dollar', symbol: r'Can$'),

  /// Congolese Franc, symbol: `FC`
  CDF(fullName: 'Congolese Franc', symbol: 'FC'),

  /// Swiss Franc, symbol: `CHF`
  CHF(fullName: 'Swiss Franc', symbol: 'CHF'),

  /// Chilean Peso, symbol: `Ch$`
  CLF(fullName: 'Chilean Peso', symbol: r'Ch$'),

  /// Chinese Yuan Renminbi, symbol: `¥`
  CNY(fullName: 'Chinese Yuan Renminbi', symbol: '¥'),

  /// Colombiam Peso, symbol: `Col$`
  COP(fullName: 'Colombiam Peso', symbol: r'Col$'),

  /// Costa Rican Colón, symbol: `₡`
  CRC(fullName: 'Costa Rican Colón', symbol: '₡'),

  /// Cuban Peso, symbol: `₱`
  CUP(fullName: 'Cuban Peso', symbol: '₱'),

  /// Cape Verdean Escudo, symbol: `Esc`
  CVE(fullName: 'Cape Verdean Escudo', symbol: 'Esc'),

  /// Czech Koruna, symbol: `Kč`
  CZK(fullName: 'Czech Koruna', symbol: 'Kč'),

  /// Djiboutian Franc, symbol: `Fdj`
  DJF(fullName: 'Djiboutian Franc', symbol: 'Fdj'),

  /// Danish Krone, symbol: `kr`
  DKK(fullName: 'Danish Krone', symbol: 'kr'),

  /// Dominican Republic Peso, symbol: `RD$`
  DOP(fullName: 'Dominican Republic Peso', symbol: r'RD$'),

  /// Algerian Dinar, symbol: `.د.ج`
  DZD(fullName: 'Algerian Dinar', symbol: '.د.ج'),

  /// Egyptian Pound, symbol: `£`
  EGP(fullName: 'Egyptian Pound', symbol: '£'),

  /// Eritrean Nakfa, symbol: `Nfk`
  ERN(fullName: 'Eritrean Nakfa', symbol: 'Nfk'),

  /// Ethiopian Birr, symbol: `ብር`
  ETB(fullName: 'Ethiopian Birr', symbol: 'ብር'),

  /// Euro, symbol: `€`
  EUR(fullName: 'Euro', symbol: '€'),

  /// Fijian Dollar, symbol: `Fj$`
  FJD(fullName: 'Fijian Dollar', symbol: r'Fj$'),

  /// Falkland Islands (Malvinas) Pound, symbol: `£`
  FKP(fullName: 'Falkland Islands (Malvinas) Pound', symbol: '£'),

  /// United Kingdom Pound, symbol: `£`
  GBP(fullName: 'United Kingdom Pound', symbol: '£'),

  /// Georgian Lari, symbol: `₾`
  GEL(fullName: 'Georgian Lari', symbol: '₾'),

  /// Guernsey Pound, symbol: `£`
  GGP(fullName: 'Guernsey Pound', symbol: '£'),

  /// Ghanaian Cedi, symbol: `¢`
  GHS(fullName: 'Ghanaian Cedi', symbol: '¢'),

  /// Gibraltar Pound, symbol: `£`
  GIP(fullName: 'Gibraltar Pound', symbol: '£'),

  /// Gambian Dalasi, symbol: `D`
  GMD(fullName: 'Gambian Dalasi', symbol: 'D'),

  /// Guinean Franc, symbol: `FG`
  GNF(fullName: 'Guinean Franc', symbol: 'FG'),

  /// Guatemalan Quetzal, symbol: `Q`
  GTQ(fullName: 'Guatemalan Quetzal', symbol: 'Q'),

  /// Guyanese Dollar, symbol: `G$`
  GYD(fullName: 'Guyanese Dollar', symbol: r'G$'),

  /// Hong Kong Dollar, symbol: `HK$/元/圓`
  HKD(fullName: 'Hong Kong Dollar', symbol: r'HK$/元/圓'),

  /// Honduran Lempira, symbol: L
  HNL(fullName: 'Honduran Lempira', symbol: 'L'),

  /// Croatian Kuna, symbol: kn
  HRK(fullName: 'Croatian Kuna', symbol: 'kn'),

  /// Haitian Gourde, symbol: G
  HTG(fullName: 'Haitian Gourde', symbol: 'G'),

  /// Hungarian Forint, symbol: Ft
  HUF(fullName: 'Hungarian Forint', symbol: 'Ft'),

  /// Indonesian Rupiah, symbol: Rp
  IDR(fullName: 'Indonesian Rupiah', symbol: 'Rp'),

  /// Israeli New Shekel, symbol: ₪
  ILS(fullName: 'Israeli New Shekel', symbol: '₪'),

  /// Manx Pound, symbol: £
  IMP(fullName: 'Manx Pound', symbol: '£'),

  /// Indian Rupee, symbol: ₹
  INR(fullName: 'Indian Rupee', symbol: '₹'),

  /// Iraqi Dinar, symbol: .د.ع
  IQD(fullName: 'Iraqi Dinar', symbol: '.د.ع'),

  /// Iranian Rial, symbol: ریال
  IRR(fullName: 'Iranian Rial', symbol: '﷼'),

  /// Icelandic Króna, symbol: kr
  ISK(fullName: 'Icelandic Króna', symbol: 'kr'),

  /// Jersey Pound, symbol: £
  JEP(fullName: 'Jersey Pound', symbol: '£'),

  /// Jamaican Dollar, symbol: J$
  JMD(fullName: 'Jamaican Dollar', symbol: r'J$'),

  /// Jordanian Dinar, symbol: .د.أ
  JOD(fullName: 'Jordanian Dinar', symbol: '.د.أ'),

  /// Japanese Yen, symbol: ¥
  JPY(fullName: 'Japanese Yen', symbol: '¥'),

  /// Kenyan Shilling, symbol: KSh
  KES(fullName: 'Kenyan Shilling', symbol: 'KSh'),

  /// Kyrgyz Som, symbol: лв
  KGS(fullName: 'Kyrgyz Som', symbol: 'лв'),

  /// Cambodian Riel, symbol: ៛
  KHR(fullName: 'Cambodian Riel', symbol: '៛'),

  /// Comorian Franc, symbol: FC
  KMF(fullName: 'Comorian Franc', symbol: 'FC'),

  /// North Korean Won, symbol: ₩
  KPW(fullName: 'North Korean Won', symbol: '₩'),

  /// South Korean Won, symbol: ₩
  KRW(fullName: 'South Korean Won', symbol: '₩'),

  /// Kuwaiti Dinar, symbol: .د.ك
  KWD(fullName: 'Kuwaiti Dinar', symbol: '.د.ك'),

  /// Cayman Islands Dollar, symbol: CI$
  KYD(fullName: 'Cayman Islands Dollar', symbol: r'CI$'),

  /// Kazakhstani Tenge, symbol: лв
  KZT(fullName: 'Kazakhstani Tenge', symbol: 'лв'),

  /// Lao Kip, symbol: ₭
  LAK(fullName: 'Lao Kip', symbol: '₭'),

  /// Lebanese Pound, symbol: £
  LBP(fullName: 'Lebanese Pound', symbol: '£'),

  /// Sri Lankan Rupee, symbol: Rs
  LKR(fullName: 'Sri Lankan Rupee', symbol: '₨'),

  /// Liberian Dollar, symbol: L$
  LRD(fullName: 'Liberian Dollar', symbol: r'L$'),

  /// Lesotho Loti, symbol: L⁄M
  LSL(fullName: 'Lesotho Loti', symbol: 'L⁄M'),

  /// Libyan Dinar, symbol: .د.ل
  LYD(fullName: 'Libyan Dinar', symbol: '.د.ل'),

  /// Moroccan Dirham, symbol: .د.م
  MAD(fullName: 'Moroccan Dirham', symbol: '.د.م'),

  /// Moldovan Leu, symbol: leu
  MDL(fullName: 'Moldovan Leu', symbol: 'leu'),

  /// Malagasy Ariary, symbol: Ar
  MGA(fullName: 'Malagasy Ariary', symbol: 'Ar'),

  /// Macedonian Denar, symbol: ден
  MKD(fullName: 'Macedonian Denar', symbol: 'ден'),

  /// Myanmar Kyat, symbol: K⁄Ks
  MMK(fullName: 'Myanmar Kyat', symbol: 'K⁄Ks'),

  /// Mongolian Tughrik, symbol: ₮
  MNT(fullName: 'Mongolian Tughrik', symbol: '₮'),

  /// Macanese Pataca, symbol: $
  MOP(fullName: 'Macanese Pataca', symbol: r'$'),

  /// Mauritanian Ouguiya, symbol: UM
  MRU(fullName: 'Mauritanian Ouguiya', symbol: 'UM'),

  /// Mauritian Rupee, symbol: Rs
  MUR(fullName: 'Mauritian Rupee', symbol: '₨'),

  /// Maldivian Rufiyaa, symbol: ރ
  MVR(fullName: 'Maldivian Rufiyaa', symbol: 'ރ'),

  /// Malawian Kwacha, symbol: MK
  MWK(fullName: 'Malawian Kwacha', symbol: 'MK'),

  /// Mexican Peso, symbol: Mex$
  MXN(fullName: 'Mexican Peso', symbol: r'Mex$'),

  /// Malaysian Ringgit, symbol: RM
  MYR(fullName: 'Malaysian Ringgit', symbol: 'RM'),

  /// Mozambican Metical, symbol: MT
  MZN(fullName: 'Mozambican Metical', symbol: 'MT'),

  /// Namibian Dollar, symbol: N$
  NAD(fullName: 'Namibian Dollar', symbol: r'N$'),

  /// Nigerian Naira, symbol: ₦
  NGN(fullName: 'Nigerian Naira', symbol: '₦'),

  /// Nicaraguan Córdoba, symbol: C$
  NIO(fullName: 'Nicaraguan Córdoba', symbol: r'C$'),

  /// Norwegian Krone, symbol: kr
  NOK(fullName: 'Norwegian Krone', symbol: 'kr'),

  /// Nepalese Rupee, symbol: Rs
  NPR(fullName: 'Nepalese Rupee', symbol: '₨'),

  /// New Zealand Dollar, symbol: $NZ
  NZD(fullName: 'New Zealand Dollar', symbol: r'$NZ'),

  /// Omani Rial, symbol: ریال
  OMR(fullName: 'Omani Rial', symbol: '﷼'),

  /// Panamanian Balboa, symbol: B/.
  PAB(fullName: 'Panamanian Balboa', symbol: 'B/.'),

  /// Peruvian Sol, symbol: S/.
  PEN(fullName: 'Peruvian Sol', symbol: 'S/.'),

  /// Papua New Guinean Kina, symbol: K
  PGK(fullName: 'Papua New Guinean Kina', symbol: 'K'),

  /// Philippine Peso, symbol: ₱
  PHP(fullName: 'Philippine Peso', symbol: '₱'),

  /// Pakistani Rupee, symbol: Rs
  PKR(fullName: 'Pakistani Rupee', symbol: '₨'),

  /// Polish Zloty, symbol: zł
  PLN(fullName: 'Polish Zloty', symbol: 'zł'),

  /// Paraguayan Guarani, symbol: ₲
  PYG(fullName: 'Paraguayan Guarani', symbol: '₲'),

  /// Qatari Riyal, symbol: ریال
  QAR(fullName: 'Qatari Riyal', symbol: '﷼'),

  /// Romanian Leu, symbol: lei
  RON(fullName: 'Romanian Leu', symbol: 'lei'),

  /// Serbian Dinar, symbol: Дин.
  RSD(fullName: 'Serbian Dinar', symbol: 'Дин.'),

  /// Russian Ruble, symbol: ₽
  RUB(fullName: 'Russian Ruble', symbol: '₽'),

  /// Rwandan Franc, symbol: FRw
  RWF(fullName: 'Rwandan Franc', symbol: 'FRw'),

  /// Saudi Riyal, symbol: ریال
  SAR(fullName: 'Saudi Riyal', symbol: '﷼'),

  /// Solomon Islands Dollar, symbol: SI$
  SBD(fullName: 'Solomon Islands Dollar', symbol: r'SI$'),

  /// Seychellois Rupee, symbol: Rs
  SCR(fullName: 'Seychellois Rupee', symbol: '₨'),

  /// Sudanese Pound, symbol: .ج.س
  SDG(fullName: 'Sudanese Pound', symbol: '.ج.س'),

  /// Swedish Krona, symbol: kr
  SEK(fullName: 'Swedish Krona', symbol: 'kr'),

  /// Singapore Dollar, symbol: S$
  SGD(fullName: 'Singapore Dollar', symbol: r'S$'),

  /// Saint Helena Pound, symbol: £
  SHP(fullName: 'Saint Helena Pound', symbol: '£'),

  /// Sierra Leonean Leone, symbol: Le
  SLL(fullName: 'Sierra Leonean Leone', symbol: 'Le'),

  /// Somali Shilling, symbol: S
  SOS(fullName: 'Somali Shilling', symbol: 'S'),

  /// Surinamese Dollar, symbol: SRD$
  SRD(fullName: 'Surinamese Dollar', symbol: r'SRD$'),

  /// South Sudanese Pound, symbol: SSP
  SSP(fullName: 'South Sudanese Pound', symbol: 'SSP'),

  /// São Tomé and Príncipe Dobra, symbol: Db
  STN(fullName: 'São Tomé and Príncipe Dobra', symbol: 'Db'),

  /// Salvadoran Colón, symbol: ₡
  SVC(fullName: 'Salvadoran Colón', symbol: '₡'),

  /// Syrian Pound, symbol: £
  SYP(fullName: 'Syrian Pound', symbol: '£'),

  /// Swazi Lilangeni, symbol: L⁄E
  SZL(fullName: 'Swazi Lilangeni', symbol: 'L⁄E'),

  /// Thai Baht, symbol: ฿
  THB(fullName: 'Thai Baht', symbol: '฿'),

  /// Tajikistani Somoni, symbol: SM
  TJS(fullName: 'Tajikistani Somoni', symbol: 'SM'),

  /// Turkmenistani Manat, symbol: m
  TMT(fullName: 'Turkmenistani Manat', symbol: 'm'),

  /// Tunisian Dinar, symbol: .د.ت
  TND(fullName: 'Tunisian Dinar', symbol: '.د.ت'),

  /// Tongan Paʻanga, symbol: T$
  TOP(fullName: 'Tongan Paʻanga', symbol: r'T$'),

  /// Turkish Lira, symbol: ₺
  TRY(fullName: 'Turkish Lira', symbol: '₺'),

  /// Trinidad and Tobago Dollar, symbol: TT$
  TTD(fullName: 'Trinidad and Tobago Dollar', symbol: r'TT$'),

  /// Tuvaluan Dollar, symbol: TV$
  TVD(fullName: 'Tuvaluan Dollar', symbol: r'TV$'),

  /// New Taiwan Dollar, symbol: NT$/元/圓
  TWD(fullName: 'New Taiwan Dollar', symbol: r'NT$/元/圓'),

  /// Tanzanian Shilling, symbol: /=
  TZS(fullName: 'Tanzanian Shilling', symbol: '/='),

  /// Ukrainian Hryvnia, symbol: ₴
  UAH(fullName: 'Ukrainian Hryvnia', symbol: '₴'),

  /// Ugandan Shilling, symbol: /=
  UGX(fullName: 'Ugandan Shilling', symbol: '/='),

  /// United States Dollar, symbol: $
  USD(fullName: 'United States Dollar', symbol: r'$'),

  /// Uruguayan Peso, symbol: $U
  UYU(fullName: 'Uruguayan Peso', symbol: r'$U'),

  /// Uzbekistani Sum, symbol: лв
  UZS(fullName: 'Uzbekistani Sum', symbol: 'лв'),

  /// Venezuela Bolívar, symbol: Bs
  VEB(fullName: 'Venezuela Bolívar', symbol: 'Bs'),

  /// Venezuelan Digital Bolívar, symbol: Bs.D
  VED(fullName: 'Venezuelan Digital Bolívar', symbol: 'Bs.D'),

  /// Venezuelan Hard Bolívar (Fuerte), symbol: Bs.F
  VEF(fullName: 'Venezuelan Hard Bolívar (Fuerte)', symbol: 'Bs.F'),

  /// Venezuelan Sovereign Bolívar (Soberano), symbol: Bs.S
  VES(fullName: 'Venezuelan Sovereign Bolívar (Soberano)', symbol: 'Bs.S'),

  /// Vietnamese Đồng, symbol: ₫
  VND(fullName: 'Vietnamese Đồng', symbol: '₫'),

  /// Vanuatu Vatu, symbol: VT
  VUV(fullName: 'Vanuatu Vatu', symbol: 'VT'),

  /// Samoan Tālā, symbol: $
  WST(fullName: 'Samoan Tālā', symbol: r'$'),

  /// Central African CFA Franc, symbol: fr.CFA
  XAF(fullName: 'Central African CFA Franc', symbol: 'fr.CFA'),

  /// East Caribbean Dollar, symbol: EC$
  XCD(fullName: 'East Caribbean Dollar', symbol: r'EC$'),

  /// West African CFA Franc, symbol: fr.CFA
  XOF(fullName: 'West African CFA Franc', symbol: 'fr.CFA'),

  /// CFP Franc, symbol: F
  XPF(fullName: 'CFP Franc', symbol: 'F'),

  /// Yemeni Rial, symbol: ریال
  YER(fullName: 'Yemeni Rial', symbol: '﷼'),

  /// South African Rand, symbol: R
  ZAR(fullName: 'South African Rand', symbol: 'R'),

  /// Zambian Kwacha, symbol: K
  ZMW(fullName: 'Zambian Kwacha', symbol: 'K'),

  /// Zimbabwean Dollar, symbol: Z$
  ZWD(fullName: 'Zimbabwean Dollar', symbol: r'Z$');

  /// This enum represents world currencies with their ISO 4217 codes and symbols.
  const Currency({required this.fullName, required this.symbol});

  /// The [symbol] represents the currency symbol.
  final String symbol;

  /// The [fullName] represents the full name of the currency.
  final String fullName;

  /// Returns a [Currency] enum value if [representation] matches a currency
  /// [name], [symbol] or [fullName]. Otherwise returns `null`.
  static Currency? of(final dynamic representation) =>
      currencyFromJson(representation);

  /// [value] is the amount to format. Returns a string with the [symbol] and
  /// [value] formatted according to the currency's locale.
  String format(final dynamic value) => '$symbol $value';
}

Iterable<String> get currencyEnumValues => _$CurrencyEnumMap.values;
Map<Currency, String> get currencyEnumMap => _$CurrencyEnumMap;
String? currencyToJson(final Currency? currency) => currencyEnumMap[currency];

Currency? currencyFromJson(final Object? currency) {
  if (currency is Currency) {
    return currency;
  }
  if (currency is num) {
    return Currency.values.elementAtOrNull(currency.toInt());
  }
  if (currency is int) {
    return Currency.values.elementAtOrNull(currency);
  }
  if (currency is String) {
    for (final Currency c in Currency.values) {
      if (c.name == currency.toUpperCase() ||
          c.fullName.toLowerCase() == currency.toLowerCase() ||
          c.symbol.toLowerCase() == currency.toLowerCase()) {
        return c;
      }
    }
  }

  return null;
}
