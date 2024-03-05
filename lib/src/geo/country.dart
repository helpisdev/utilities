import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'continent.dart';
import 'currency.dart';
import 'dial_code.dart';
import 'iso_code.dart';
import 'language.dart';

part 'country.g.dart';

/// Enum representing all countries in the world.
///
/// Each country has the following properties:
///
/// - [capital] -> The capital city of the country.
/// - [nativeName] -> The native name of the country.
/// - [flag] -> The flag emoji of the country.
/// - [iso] -> The ISO 3166-1 alpha-2 code of the country.
/// - [fullName] -> The full English name of the country.
/// - [continent] -> The continent the country is located in.
/// - [dialCode] -> The telephone dialing code of the country.
/// - [currency] -> The currency used in the country.
/// - [languages] -> The main languages spoken in the country.
@JsonEnum(alwaysCreate: true)
enum Country {
  @JsonValue('AF')
  ascensionIsland(
    capital: 'Georgetown',
    nativeName: 'Ascension Island',
    flag: '🇦🇨',
    iso: IsoCode.AC,
    fullName: 'Ascension Island',
    continent: Continent.AF,
    dialCode: DialCode(247),
    currency: Currency.SHP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('AD')
  andorra(
    capital: 'Andorra la Vella',
    nativeName: 'Andorra',
    flag: '🇦🇩',
    iso: IsoCode.AD,
    fullName: 'Andorra',
    continent: Continent.EU,
    dialCode: DialCode(376),
    currency: Currency.EUR,
    languages: <Language>[Language.CA],
  ),
  @JsonValue('AE')
  unitedArabEmirates(
    capital: 'Abu Dhabi',
    nativeName: 'دولة الإمارات العربية المتحدة',
    flag: '🇦🇪',
    iso: IsoCode.AE,
    fullName: 'United Arab Emirates',
    continent: Continent.AS,
    dialCode: DialCode(971),
    currency: Currency.AED,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('AF')
  afghanistan(
    capital: 'Kabul',
    nativeName: 'افغانستان',
    flag: '🇦🇫',
    iso: IsoCode.AF,
    fullName: 'Afghanistan',
    continent: Continent.AS,
    dialCode: DialCode(93),
    currency: Currency.AFN,
    languages: <Language>[Language.PS, Language.UZ, Language.TK],
  ),
  @JsonValue('AG')
  antiguaAndBarbuda(
    capital: '''Saint John's''',
    nativeName: 'Antigua and Barbuda',
    flag: '🇦🇬',
    iso: IsoCode.AG,
    fullName: 'Antigua and Barbuda',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('AI')
  anguilla(
    capital: 'The Valley',
    nativeName: 'Anguilla',
    flag: '🇦🇮',
    iso: IsoCode.AI,
    fullName: 'Anguilla',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('AL')
  albania(
    capital: 'Tirana',
    nativeName: 'Shqipëria',
    flag: '🇦🇱',
    iso: IsoCode.AL,
    fullName: 'Albania',
    continent: Continent.EU,
    dialCode: DialCode(355),
    currency: Currency.ALL,
    languages: <Language>[Language.SQ],
  ),
  @JsonValue('AM')
  armenia(
    capital: 'Yerevan',
    nativeName: 'Հայաստան',
    flag: '🇦🇲',
    iso: IsoCode.AM,
    fullName: 'Armenia',
    continent: Continent.AS,
    dialCode: DialCode(374),
    currency: Currency.AMD,
    languages: <Language>[Language.HY, Language.RU],
  ),
  @JsonValue('AO')
  angola(
    capital: 'Luanda',
    nativeName: 'Angola',
    flag: '🇦🇴',
    iso: IsoCode.AO,
    fullName: 'Angola',
    continent: Continent.AF,
    dialCode: DialCode(244),
    currency: Currency.AOA,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('AR')
  argentina(
    capital: 'Buenos Aires',
    nativeName: 'Argentina',
    flag: '🇦🇷',
    iso: IsoCode.AR,
    fullName: 'Argentina',
    continent: Continent.SA,
    dialCode: DialCode(54),
    currency: Currency.ARS,
    languages: <Language>[Language.ES, Language.GN],
  ),
  @JsonValue('AS')
  americanSamoa(
    capital: 'Pago Pago',
    nativeName: 'American Samoa',
    flag: '🇦🇸',
    iso: IsoCode.AS,
    fullName: 'American Samoa',
    continent: Continent.OC,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN, Language.SM],
  ),
  @JsonValue('AT')
  austria(
    capital: 'Vienna',
    nativeName: 'Österreich',
    flag: '🇦🇹',
    iso: IsoCode.AT,
    fullName: 'Austria',
    continent: Continent.EU,
    dialCode: DialCode(43),
    currency: Currency.EUR,
    languages: <Language>[Language.DE],
  ),
  @JsonValue('AU')
  australia(
    capital: 'Canberra',
    nativeName: 'Australia',
    flag: '🇦🇺',
    iso: IsoCode.AU,
    fullName: 'Australia',
    continent: Continent.OC,
    dialCode: DialCode(61),
    currency: Currency.AUD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('AW')
  aruba(
    capital: 'Oranjestad',
    nativeName: 'Aruba',
    flag: '🇦🇼',
    iso: IsoCode.AW,
    fullName: 'Aruba',
    continent: Continent.NA,
    dialCode: DialCode(297),
    currency: Currency.AWG,
    languages: <Language>[Language.NL, Language.PA],
  ),
  @JsonValue('AX')
  aland(
    capital: 'Mariehamn',
    nativeName: 'Åland',
    flag: '🇦🇽',
    iso: IsoCode.AX,
    fullName: 'Åland',
    continent: Continent.EU,
    dialCode: DialCode(358),
    currency: Currency.EUR,
    languages: <Language>[Language.SV],
  ),
  @JsonValue('AZ')
  azerbaijan(
    capital: 'Baku',
    nativeName: 'Azərbaycan',
    flag: '🇦🇿',
    iso: IsoCode.AZ,
    fullName: 'Azerbaijan',
    continent: Continent.AS,
    dialCode: DialCode(994),
    currency: Currency.AZN,
    languages: <Language>[Language.AZ],
  ),
  @JsonValue('BA')
  bosniaAndHerzegovina(
    capital: 'Sarajevo',
    nativeName: 'Bosna i Hercegovina',
    flag: '🇧🇦',
    iso: IsoCode.BA,
    fullName: 'Bosnia and Herzegovina',
    continent: Continent.EU,
    dialCode: DialCode(387),
    currency: Currency.BAM,
    languages: <Language>[Language.BS, Language.HR, Language.SR],
  ),
  @JsonValue('BB')
  barbados(
    capital: 'Bridgetown',
    nativeName: 'Barbados',
    flag: '🇧🇧',
    iso: IsoCode.BB,
    fullName: 'Barbados',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.BBD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('BD')
  bangladesh(
    capital: 'Dhaka',
    nativeName: 'Bangladesh',
    flag: '🇧🇩',
    iso: IsoCode.BD,
    fullName: 'Bangladesh',
    continent: Continent.AS,
    dialCode: DialCode(880),
    currency: Currency.BDT,
    languages: <Language>[Language.BN],
  ),
  @JsonValue('BE')
  belgium(
    capital: 'Brussels',
    nativeName: 'België',
    flag: '🇧🇪',
    iso: IsoCode.BE,
    fullName: 'Belgium',
    continent: Continent.EU,
    dialCode: DialCode(32),
    currency: Currency.EUR,
    languages: <Language>[Language.NL, Language.FR, Language.DE],
  ),
  @JsonValue('BF')
  burkinaFaso(
    capital: 'Ouagadougou',
    nativeName: 'Burkina Faso',
    flag: '🇧🇫',
    iso: IsoCode.BF,
    fullName: 'Burkina Faso',
    continent: Continent.AF,
    dialCode: DialCode(226),
    currency: Currency.XOF,
    languages: <Language>[Language.FR, Language.FF],
  ),
  @JsonValue('BG')
  bulgaria(
    capital: 'Sofia',
    nativeName: 'България',
    flag: '🇧🇬',
    iso: IsoCode.BG,
    fullName: 'Bulgaria',
    continent: Continent.EU,
    dialCode: DialCode(359),
    currency: Currency.BGN,
    languages: <Language>[Language.BG],
  ),
  @JsonValue('BH')
  bahrain(
    capital: 'Manama',
    nativeName: 'البحرين',
    flag: '🇧🇭',
    iso: IsoCode.BH,
    fullName: 'Bahrain',
    continent: Continent.AS,
    dialCode: DialCode(973),
    currency: Currency.BHD,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('BI')
  burundi(
    capital: 'Bujumbura',
    nativeName: 'Burundi',
    flag: '🇧🇮',
    iso: IsoCode.BI,
    fullName: 'Burundi',
    continent: Continent.AF,
    dialCode: DialCode(257),
    currency: Currency.BIF,
    languages: <Language>[Language.FR, Language.RN],
  ),
  @JsonValue('BJ')
  benin(
    capital: 'Porto-Novo',
    nativeName: 'Bénin',
    flag: '🇧🇯',
    iso: IsoCode.BJ,
    fullName: 'Benin',
    continent: Continent.AF,
    dialCode: DialCode(229),
    currency: Currency.XOF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('BL')
  saintBarthelemy(
    capital: 'Gustavia',
    nativeName: 'Saint-Barthélemy',
    flag: '🇧🇱',
    iso: IsoCode.BL,
    fullName: 'Saint Barthélemy',
    continent: Continent.NA,
    dialCode: DialCode(590),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('BM')
  bermuda(
    capital: 'Hamilton',
    nativeName: 'Bermuda',
    flag: '🇧🇲',
    iso: IsoCode.BM,
    fullName: 'Bermuda',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.BMD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('BN')
  brunei(
    capital: 'Bandar Seri Begawan',
    nativeName: 'Negara Brunei Darussalam',
    flag: '🇧🇳',
    iso: IsoCode.BN,
    fullName: 'Brunei',
    continent: Continent.AS,
    dialCode: DialCode(673),
    currency: Currency.BND,
    languages: <Language>[Language.MS],
  ),
  @JsonValue('BO')
  bolivia(
    capital: 'Sucre',
    nativeName: 'Bolivia',
    flag: '🇧🇴',
    iso: IsoCode.BO,
    fullName: 'Bolivia',
    continent: Continent.SA,
    dialCode: DialCode(591),
    currency: Currency.BOB,
    languages: <Language>[Language.ES, Language.AY, Language.QU],
  ),
  @JsonValue('BQ')
  bonaire(
    capital: 'Kralendijk',
    nativeName: 'Bonaire',
    flag: '🇧🇶',
    iso: IsoCode.BQ,
    fullName: 'Bonaire',
    continent: Continent.NA,
    dialCode: DialCode(599),
    currency: Currency.USD,
    languages: <Language>[Language.NL],
  ),
  @JsonValue('BR')
  brazil(
    capital: 'Brasília',
    nativeName: 'Brasil',
    flag: '🇧🇷',
    iso: IsoCode.BR,
    fullName: 'Brazil',
    continent: Continent.SA,
    dialCode: DialCode(55),
    currency: Currency.BRL,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('BS')
  bahamas(
    capital: 'Nassau',
    nativeName: 'Bahamas',
    flag: '🇧🇸',
    iso: IsoCode.BS,
    fullName: 'Bahamas',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.BSD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('BT')
  bhutan(
    capital: 'Thimphu',
    nativeName: 'ʼbrug-yul',
    flag: '🇧🇹',
    iso: IsoCode.BT,
    fullName: 'Bhutan',
    continent: Continent.AS,
    dialCode: DialCode(975),
    currency: Currency.BTN,
    languages: <Language>[Language.DZ],
  ),
  @JsonValue('BW')
  botswana(
    capital: 'Gaborone',
    nativeName: 'Botswana',
    flag: '🇧🇼',
    iso: IsoCode.BW,
    fullName: 'Botswana',
    continent: Continent.AF,
    dialCode: DialCode(267),
    currency: Currency.BWP,
    languages: <Language>[Language.EN, Language.TN],
  ),
  @JsonValue('BY')
  belarus(
    capital: 'Minsk',
    nativeName: 'Белару́сь',
    flag: '🇧🇾',
    iso: IsoCode.BY,
    fullName: 'Belarus',
    continent: Continent.EU,
    dialCode: DialCode(375),
    currency: Currency.BYN,
    languages: <Language>[Language.BE, Language.RU],
  ),
  @JsonValue('BZ')
  belize(
    capital: 'Belmopan',
    nativeName: 'Belize',
    flag: '🇧🇿',
    iso: IsoCode.BZ,
    fullName: 'Belize',
    continent: Continent.NA,
    dialCode: DialCode(501),
    currency: Currency.BZD,
    languages: <Language>[Language.EN, Language.ES],
  ),
  @JsonValue('CA')
  canada(
    capital: 'Ottawa',
    nativeName: 'Canada',
    flag: '🇨🇦',
    iso: IsoCode.CA,
    fullName: 'Canada',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.CAD,
    languages: <Language>[Language.EN, Language.FR],
  ),
  @JsonValue('CC')
  cocosKeelingIslands(
    capital: 'West Island',
    nativeName: 'Cocos (Keeling) Islands',
    flag: '🇨🇨',
    iso: IsoCode.CC,
    fullName: 'Cocos [Keeling] Islands',
    continent: Continent.AS,
    dialCode: DialCode(61),
    currency: Currency.AUD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('CD')
  democraticRepublicOfTheCongo(
    capital: 'Kinshasa',
    nativeName: 'République démocratique du Congo',
    flag: '🇨🇩',
    iso: IsoCode.CD,
    fullName: 'Democratic Republic of the Congo',
    continent: Continent.AF,
    dialCode: DialCode(243),
    currency: Currency.CDF,
    languages: <Language>[
      Language.FR,
      Language.LN,
      Language.KG,
      Language.SW,
      Language.LU,
    ],
  ),
  @JsonValue('CF')
  centralAfricanRepublic(
    capital: 'Bangui',
    nativeName: 'Ködörösêse tî Bêafrîka',
    flag: '🇨🇫',
    iso: IsoCode.CF,
    fullName: 'Central African Republic',
    continent: Continent.AF,
    dialCode: DialCode(236),
    currency: Currency.XAF,
    languages: <Language>[Language.FR, Language.SG],
  ),
  @JsonValue('CG')
  republicOfTheCongo(
    capital: 'Brazzaville',
    nativeName: 'République du Congo',
    flag: '🇨🇬',
    iso: IsoCode.CG,
    fullName: 'Republic of the Congo',
    continent: Continent.AF,
    dialCode: DialCode(242),
    currency: Currency.XAF,
    languages: <Language>[Language.FR, Language.LN],
  ),
  @JsonValue('CH')
  switzerland(
    capital: 'Bern',
    nativeName: 'Schweiz',
    flag: '🇨🇭',
    iso: IsoCode.CH,
    fullName: 'Switzerland',
    continent: Continent.EU,
    dialCode: DialCode(41),
    currency: Currency.CHF,
    languages: <Language>[Language.DE, Language.FR, Language.IT],
  ),
  @JsonValue('CI')
  ivoryCoast(
    capital: 'Yamoussoukro',
    nativeName: '''Côte d'Ivoire''',
    flag: '🇨🇮',
    iso: IsoCode.CI,
    fullName: 'Ivory Coast',
    continent: Continent.AF,
    dialCode: DialCode(225),
    currency: Currency.XOF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('CK')
  cookIslands(
    capital: 'Avarua',
    nativeName: 'Cook Islands',
    flag: '🇨🇰',
    iso: IsoCode.CK,
    fullName: 'Cook Islands',
    continent: Continent.OC,
    dialCode: DialCode(682),
    currency: Currency.NZD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('CL')
  chile(
    capital: 'Santiago',
    nativeName: 'Chile',
    flag: '🇨🇱',
    iso: IsoCode.CL,
    fullName: 'Chile',
    continent: Continent.SA,
    dialCode: DialCode(56),
    currency: Currency.CLF,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('CM')
  cameroon(
    capital: 'Yaoundé',
    nativeName: 'Cameroon',
    flag: '🇨🇲',
    iso: IsoCode.CM,
    fullName: 'Cameroon',
    continent: Continent.AF,
    dialCode: DialCode(237),
    currency: Currency.XAF,
    languages: <Language>[Language.EN, Language.FR],
  ),
  @JsonValue('CN')
  china(
    capital: 'Beijing',
    nativeName: '中国',
    flag: '🇨🇳',
    iso: IsoCode.CN,
    fullName: 'China',
    continent: Continent.AS,
    dialCode: DialCode(86),
    currency: Currency.CNY,
    languages: <Language>[Language.ZH],
  ),
  @JsonValue('CO')
  colombia(
    capital: 'Bogotá',
    nativeName: 'Colombia',
    flag: '🇨🇴',
    iso: IsoCode.CO,
    fullName: 'Colombia',
    continent: Continent.SA,
    dialCode: DialCode(57),
    currency: Currency.COP,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('CR')
  costaRica(
    capital: 'San José',
    nativeName: 'Costa Rica',
    flag: '🇨🇷',
    iso: IsoCode.CR,
    fullName: 'Costa Rica',
    continent: Continent.NA,
    dialCode: DialCode(506),
    currency: Currency.CRC,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('CU')
  cuba(
    capital: 'Havana',
    nativeName: 'Cuba',
    flag: '🇨🇺',
    iso: IsoCode.CU,
    fullName: 'Cuba',
    continent: Continent.NA,
    dialCode: DialCode(53),
    currency: Currency.CUP,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('CV')
  capeVerde(
    capital: 'Praia',
    nativeName: 'Cabo Verde',
    flag: '🇨🇻',
    iso: IsoCode.CV,
    fullName: 'Cape Verde',
    continent: Continent.AF,
    dialCode: DialCode(238),
    currency: Currency.CVE,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('CW')
  curacao(
    capital: 'Willemstad',
    nativeName: 'Curaçao',
    flag: '🇨🇼',
    iso: IsoCode.CW,
    fullName: 'Curacao',
    continent: Continent.NA,
    dialCode: DialCode(599),
    currency: Currency.ANG,
    languages: <Language>[Language.NL, Language.PA, Language.EN],
  ),
  @JsonValue('CX')
  christmasIsland(
    capital: 'Flying Fish Cove',
    nativeName: 'Christmas Island',
    flag: '🇨🇽',
    iso: IsoCode.CX,
    fullName: 'Christmas Island',
    continent: Continent.AS,
    dialCode: DialCode(61),
    currency: Currency.AUD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('CY')
  cyprus(
    capital: 'Nicosia',
    nativeName: 'Κύπρος',
    flag: '🇨🇾',
    iso: IsoCode.CY,
    fullName: 'Cyprus',
    continent: Continent.EU,
    dialCode: DialCode(357),
    currency: Currency.EUR,
    languages: <Language>[Language.EL, Language.TR, Language.HY],
  ),
  @JsonValue('CZ')
  czechRepublic(
    capital: 'Prague',
    nativeName: 'Česká republika',
    flag: '🇨🇿',
    iso: IsoCode.CZ,
    fullName: 'Czech Republic',
    continent: Continent.EU,
    dialCode: DialCode(420),
    currency: Currency.CZK,
    languages: <Language>[Language.CS, Language.SK],
  ),
  @JsonValue('DE')
  germany(
    capital: 'Berlin',
    nativeName: 'Deutschland',
    flag: '🇩🇪',
    iso: IsoCode.DE,
    fullName: 'Germany',
    continent: Continent.EU,
    dialCode: DialCode(49),
    currency: Currency.EUR,
    languages: <Language>[Language.DE],
  ),
  @JsonValue('DJ')
  djibouti(
    capital: 'Djibouti',
    nativeName: 'Djibouti',
    flag: '🇩🇯',
    iso: IsoCode.DJ,
    fullName: 'Djibouti',
    continent: Continent.AF,
    dialCode: DialCode(253),
    currency: Currency.DJF,
    languages: <Language>[Language.FR, Language.AR],
  ),
  @JsonValue('DK')
  denmark(
    capital: 'Copenhagen',
    nativeName: 'Danmark',
    flag: '🇩🇰',
    iso: IsoCode.DK,
    fullName: 'Denmark',
    continent: Continent.EU,
    dialCode: DialCode(45),
    currency: Currency.DKK,
    languages: <Language>[Language.DA],
  ),
  @JsonValue('DM')
  dominica(
    capital: 'Roseau',
    nativeName: 'Dominica',
    flag: '🇩🇲',
    iso: IsoCode.DM,
    fullName: 'Dominica',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('DO')
  dominicanRepublic(
    capital: 'Santo Domingo',
    nativeName: 'República Dominicana',
    flag: '🇩🇴',
    iso: IsoCode.DO,
    fullName: 'Dominican Republic',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.DOP,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('DZ')
  algeria(
    capital: 'Algiers',
    nativeName: 'الجزائر',
    flag: '🇩🇿',
    iso: IsoCode.DZ,
    fullName: 'Algeria',
    continent: Continent.AF,
    dialCode: DialCode(213),
    currency: Currency.DZD,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('EC')
  ecuador(
    capital: 'Quito',
    nativeName: 'Ecuador',
    flag: '🇪🇨',
    iso: IsoCode.EC,
    fullName: 'Ecuador',
    continent: Continent.SA,
    dialCode: DialCode(593),
    currency: Currency.USD,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('EE')
  estonia(
    capital: 'Tallinn',
    nativeName: 'Eesti',
    flag: '🇪🇪',
    iso: IsoCode.EE,
    fullName: 'Estonia',
    continent: Continent.EU,
    dialCode: DialCode(372),
    currency: Currency.EUR,
    languages: <Language>[Language.ET],
  ),
  @JsonValue('EG')
  egypt(
    capital: 'Cairo',
    nativeName: 'مصر',
    flag: '🇪🇬',
    iso: IsoCode.EG,
    fullName: 'Egypt',
    continent: Continent.AF,
    dialCode: DialCode(20),
    currency: Currency.EGP,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('EH')
  westernSahara(
    capital: 'El Aaiún',
    nativeName: 'الصحراء الغربية',
    flag: '🇪🇭',
    iso: IsoCode.EH,
    fullName: 'Western Sahara',
    continent: Continent.AF,
    dialCode: DialCode(212),
    currency: Currency.MAD,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('ER')
  eritrea(
    capital: 'Asmara',
    nativeName: 'ኤርትራ',
    flag: '🇪🇷',
    iso: IsoCode.ER,
    fullName: 'Eritrea',
    continent: Continent.AF,
    dialCode: DialCode(291),
    currency: Currency.ERN,
    languages: <Language>[Language.TI, Language.AR, Language.EN],
  ),
  @JsonValue('ES')
  spain(
    capital: 'Madrid',
    nativeName: 'España',
    flag: '🇪🇸',
    iso: IsoCode.ES,
    fullName: 'Spain',
    continent: Continent.EU,
    dialCode: DialCode(34),
    currency: Currency.EUR,
    languages: <Language>[
      Language.ES,
      Language.EU,
      Language.CA,
      Language.GL,
      Language.OC,
    ],
  ),
  @JsonValue('ET')
  ethiopia(
    capital: 'Addis Ababa',
    nativeName: 'ኢትዮጵያ',
    flag: '🇪🇹',
    iso: IsoCode.ET,
    fullName: 'Ethiopia',
    continent: Continent.AF,
    dialCode: DialCode(251),
    currency: Currency.ETB,
    languages: <Language>[Language.AM],
  ),
  @JsonValue('FI')
  finland(
    capital: 'Helsinki',
    nativeName: 'Suomi',
    flag: '🇫🇮',
    iso: IsoCode.FI,
    fullName: 'Finland',
    continent: Continent.EU,
    dialCode: DialCode(358),
    currency: Currency.EUR,
    languages: <Language>[Language.FI, Language.SV],
  ),
  @JsonValue('FJ')
  fiji(
    capital: 'Suva',
    nativeName: 'Fiji',
    flag: '🇫🇯',
    iso: IsoCode.FJ,
    fullName: 'Fiji',
    continent: Continent.OC,
    dialCode: DialCode(679),
    currency: Currency.FJD,
    languages: <Language>[Language.EN, Language.FJ, Language.HI, Language.UR],
  ),
  @JsonValue('FK')
  falklandIslands(
    capital: 'Stanley',
    nativeName: 'Falkland Islands',
    flag: '🇫🇰',
    iso: IsoCode.FK,
    fullName: 'Falkland Islands',
    continent: Continent.SA,
    dialCode: DialCode(500),
    currency: Currency.FKP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('FM')
  micronesia(
    capital: 'Palikir',
    nativeName: 'Micronesia',
    flag: '🇫🇲',
    iso: IsoCode.FM,
    fullName: 'Micronesia',
    continent: Continent.OC,
    dialCode: DialCode(691),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('FO')
  faroeIslands(
    capital: 'Tórshavn',
    nativeName: 'Føroyar',
    flag: '🇫🇴',
    iso: IsoCode.FO,
    fullName: 'Faroe Islands',
    continent: Continent.EU,
    dialCode: DialCode(298),
    currency: Currency.DKK,
    languages: <Language>[Language.FO],
  ),
  @JsonValue('FR')
  france(
    capital: 'Paris',
    nativeName: 'France',
    flag: '🇫🇷',
    iso: IsoCode.FR,
    fullName: 'France',
    continent: Continent.EU,
    dialCode: DialCode(33),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('GA')
  gabon(
    capital: 'Libreville',
    nativeName: 'Gabon',
    flag: '🇬🇦',
    iso: IsoCode.GA,
    fullName: 'Gabon',
    continent: Continent.AF,
    dialCode: DialCode(241),
    currency: Currency.XAF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('GB')
  unitedKingdom(
    capital: 'London',
    nativeName: 'United Kingdom',
    flag: '🇬🇧',
    iso: IsoCode.GB,
    fullName: 'United Kingdom',
    continent: Continent.EU,
    dialCode: DialCode(44),
    currency: Currency.GBP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('GD')
  grenada(
    capital: '''St. George's''',
    nativeName: 'Grenada',
    flag: '🇬🇩',
    iso: IsoCode.GD,
    fullName: 'Grenada',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('GE')
  georgia(
    capital: 'Tbilisi',
    nativeName: 'საქართველო',
    flag: '🇬🇪',
    iso: IsoCode.GE,
    fullName: 'Georgia',
    continent: Continent.AS,
    dialCode: DialCode(995),
    currency: Currency.GEL,
    languages: <Language>[Language.KA],
  ),
  @JsonValue('GF')
  frenchGuiana(
    capital: 'Cayenne',
    nativeName: 'Guyane française',
    flag: '🇬🇫',
    iso: IsoCode.GF,
    fullName: 'French Guiana',
    continent: Continent.SA,
    dialCode: DialCode(594),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('GG')
  guernsey(
    capital: 'St. Peter Port',
    nativeName: 'Guernsey',
    flag: '🇬🇬',
    iso: IsoCode.GG,
    fullName: 'Guernsey',
    continent: Continent.EU,
    dialCode: DialCode(44),
    currency: Currency.GBP,
    languages: <Language>[Language.EN, Language.FR],
  ),
  @JsonValue('GH')
  ghana(
    capital: 'Accra',
    nativeName: 'Ghana',
    flag: '🇬🇭',
    iso: IsoCode.GH,
    fullName: 'Ghana',
    continent: Continent.AF,
    dialCode: DialCode(233),
    currency: Currency.GHS,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('GI')
  gibraltar(
    capital: 'Gibraltar',
    nativeName: 'Gibraltar',
    flag: '🇬🇮',
    iso: IsoCode.GI,
    fullName: 'Gibraltar',
    continent: Continent.EU,
    dialCode: DialCode(350),
    currency: Currency.GIP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('GL')
  greenland(
    capital: 'Nuuk',
    nativeName: 'Kalaallit Nunaat',
    flag: '🇬🇱',
    iso: IsoCode.GL,
    fullName: 'Greenland',
    continent: Continent.NA,
    dialCode: DialCode(299),
    currency: Currency.DKK,
    languages: <Language>[Language.KL],
  ),
  @JsonValue('GM')
  gambia(
    capital: 'Banjul',
    nativeName: 'Gambia',
    flag: '🇬🇲',
    iso: IsoCode.GM,
    fullName: 'Gambia',
    continent: Continent.AF,
    dialCode: DialCode(220),
    currency: Currency.GMD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('GN')
  guinea(
    capital: 'Conakry',
    nativeName: 'Guinée',
    flag: '🇬🇳',
    iso: IsoCode.GN,
    fullName: 'Guinea',
    continent: Continent.AF,
    dialCode: DialCode(224),
    currency: Currency.GNF,
    languages: <Language>[Language.FR, Language.FF],
  ),
  @JsonValue('GP')
  guadeloupe(
    capital: 'Basse-Terre',
    nativeName: 'Guadeloupe',
    flag: '🇬🇵',
    iso: IsoCode.GP,
    fullName: 'Guadeloupe',
    continent: Continent.NA,
    dialCode: DialCode(590),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('GQ')
  equatorialGuinea(
    capital: 'Malabo',
    nativeName: 'Guinea Ecuatorial',
    flag: '🇬🇶',
    iso: IsoCode.GQ,
    fullName: 'Equatorial Guinea',
    continent: Continent.AF,
    dialCode: DialCode(240),
    currency: Currency.XAF,
    languages: <Language>[Language.ES, Language.FR],
  ),
  @JsonValue('GR')
  greece(
    capital: 'Athens',
    nativeName: 'Ελλάδα',
    flag: '🇬🇷',
    iso: IsoCode.GR,
    fullName: 'Greece',
    continent: Continent.EU,
    dialCode: DialCode(30),
    currency: Currency.EUR,
    languages: <Language>[Language.EL],
  ),
  @JsonValue('GT')
  guatemala(
    capital: 'Guatemala City',
    nativeName: 'Guatemala',
    flag: '🇬🇹',
    iso: IsoCode.GT,
    fullName: 'Guatemala',
    continent: Continent.NA,
    dialCode: DialCode(502),
    currency: Currency.GTQ,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('GU')
  guam(
    capital: 'Hagåtña',
    nativeName: 'Guam',
    flag: '🇬🇺',
    iso: IsoCode.GU,
    fullName: 'Guam',
    continent: Continent.OC,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN, Language.CH, Language.ES],
  ),
  @JsonValue('GW')
  guineaBissau(
    capital: 'Bissau',
    nativeName: 'Guiné-Bissau',
    flag: '🇬🇼',
    iso: IsoCode.GW,
    fullName: 'Guinea-Bissau',
    continent: Continent.AF,
    dialCode: DialCode(245),
    currency: Currency.XOF,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('GY')
  guyana(
    capital: 'Georgetown',
    nativeName: 'Guyana',
    flag: '🇬🇾',
    iso: IsoCode.GY,
    fullName: 'Guyana',
    continent: Continent.SA,
    dialCode: DialCode(592),
    currency: Currency.GYD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('HK')
  hongKong(
    capital: 'City of Victoria',
    nativeName: '香港',
    flag: '🇭🇰',
    iso: IsoCode.HK,
    fullName: 'Hong Kong',
    continent: Continent.AS,
    dialCode: DialCode(852),
    currency: Currency.HKD,
    languages: <Language>[Language.ZH, Language.EN],
  ),
  @JsonValue('HN')
  honduras(
    capital: 'Tegucigalpa',
    nativeName: 'Honduras',
    flag: '🇭🇳',
    iso: IsoCode.HN,
    fullName: 'Honduras',
    continent: Continent.NA,
    dialCode: DialCode(504),
    currency: Currency.HNL,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('HR')
  croatia(
    capital: 'Zagreb',
    nativeName: 'Hrvatska',
    flag: '🇭🇷',
    iso: IsoCode.HR,
    fullName: 'Croatia',
    continent: Continent.EU,
    dialCode: DialCode(385),
    currency: Currency.HRK,
    languages: <Language>[Language.HR],
  ),
  @JsonValue('HT')
  haiti(
    capital: 'Port-au-Prince',
    nativeName: 'Haïti',
    flag: '🇭🇹',
    iso: IsoCode.HT,
    fullName: 'Haiti',
    continent: Continent.NA,
    dialCode: DialCode(509),
    currency: Currency.HTG,
    languages: <Language>[Language.FR, Language.HT],
  ),
  @JsonValue('HU')
  hungary(
    capital: 'Budapest',
    nativeName: 'Magyarország',
    flag: '🇭🇺',
    iso: IsoCode.HU,
    fullName: 'Hungary',
    continent: Continent.EU,
    dialCode: DialCode(36),
    currency: Currency.HUF,
    languages: <Language>[Language.HU],
  ),
  @JsonValue('ID')
  indonesia(
    capital: 'Jakarta',
    nativeName: 'Indonesia',
    flag: '🇮🇩',
    iso: IsoCode.ID,
    fullName: 'Indonesia',
    continent: Continent.AS,
    dialCode: DialCode(62),
    currency: Currency.IDR,
    languages: <Language>[Language.ID],
  ),
  @JsonValue('IE')
  ireland(
    capital: 'Dublin',
    nativeName: 'Éire',
    flag: '🇮🇪',
    iso: IsoCode.IE,
    fullName: 'Ireland',
    continent: Continent.EU,
    dialCode: DialCode(353),
    currency: Currency.EUR,
    languages: <Language>[Language.GA, Language.EN],
  ),
  @JsonValue('IL')
  israel(
    capital: 'Jerusalem',
    nativeName: 'יִשְׂרָאֵל',
    flag: '🇮🇱',
    iso: IsoCode.IL,
    fullName: 'Israel',
    continent: Continent.AS,
    dialCode: DialCode(972),
    currency: Currency.ILS,
    languages: <Language>[Language.HE, Language.AR],
  ),
  @JsonValue('IM')
  isleOfMan(
    capital: 'Douglas',
    nativeName: 'Isle of Man',
    flag: '🇮🇲',
    iso: IsoCode.IM,
    fullName: 'Isle of Man',
    continent: Continent.EU,
    dialCode: DialCode(44),
    currency: Currency.GBP,
    languages: <Language>[Language.EN, Language.GV],
  ),
  @JsonValue('IN')
  india(
    capital: 'New Delhi',
    nativeName: 'भारत',
    flag: '🇮🇳',
    iso: IsoCode.IN,
    fullName: 'India',
    continent: Continent.AS,
    dialCode: DialCode(91),
    currency: Currency.INR,
    languages: <Language>[Language.HI, Language.EN],
  ),
  @JsonValue('IO')
  britishIndianOceanTerritory(
    capital: 'Diego Garcia',
    nativeName: 'British Indian Ocean Territory',
    flag: '🇮🇴',
    iso: IsoCode.IO,
    fullName: 'British Indian Ocean Territory',
    continent: Continent.AS,
    dialCode: DialCode(246),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('IQ')
  iraq(
    capital: 'Baghdad',
    nativeName: 'العراق',
    flag: '🇮🇶',
    iso: IsoCode.IQ,
    fullName: 'Iraq',
    continent: Continent.AS,
    dialCode: DialCode(964),
    currency: Currency.IQD,
    languages: <Language>[Language.AR, Language.KU],
  ),
  @JsonValue('IR')
  iran(
    capital: 'Tehran',
    nativeName: 'ایران',
    flag: '🇮🇷',
    iso: IsoCode.IR,
    fullName: 'Iran',
    continent: Continent.AS,
    dialCode: DialCode(98),
    currency: Currency.IRR,
    languages: <Language>[Language.FA],
  ),
  @JsonValue('IS')
  iceland(
    capital: 'Reykjavik',
    nativeName: 'Ísland',
    flag: '🇮🇸',
    iso: IsoCode.IS,
    fullName: 'Iceland',
    continent: Continent.EU,
    dialCode: DialCode(354),
    currency: Currency.ISK,
    languages: <Language>[Language.IS],
  ),
  @JsonValue('IT')
  italy(
    capital: 'Rome',
    nativeName: 'Italia',
    flag: '🇮🇹',
    iso: IsoCode.IT,
    fullName: 'Italy',
    continent: Continent.EU,
    dialCode: DialCode(39),
    currency: Currency.EUR,
    languages: <Language>[Language.IT],
  ),
  @JsonValue('JE')
  jersey(
    capital: 'Saint Helier',
    nativeName: 'Jersey',
    flag: '🇯🇪',
    iso: IsoCode.JE,
    fullName: 'Jersey',
    continent: Continent.EU,
    dialCode: DialCode(44),
    currency: Currency.GBP,
    languages: <Language>[Language.EN, Language.FR],
  ),
  @JsonValue('JM')
  jamaica(
    capital: 'Kingston',
    nativeName: 'Jamaica',
    flag: '🇯🇲',
    iso: IsoCode.JM,
    fullName: 'Jamaica',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.JMD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('JO')
  jordan(
    capital: 'Amman',
    nativeName: 'الأردن',
    flag: '🇯🇴',
    iso: IsoCode.JO,
    fullName: 'Jordan',
    continent: Continent.AS,
    dialCode: DialCode(962),
    currency: Currency.JOD,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('JP')
  japan(
    capital: 'Tokyo',
    nativeName: '日本',
    flag: '🇯🇵',
    iso: IsoCode.JP,
    fullName: 'Japan',
    continent: Continent.AS,
    dialCode: DialCode(81),
    currency: Currency.JPY,
    languages: <Language>[Language.JA],
  ),
  @JsonValue('KE')
  kenya(
    capital: 'Nairobi',
    nativeName: 'Kenya',
    flag: '🇰🇪',
    iso: IsoCode.KE,
    fullName: 'Kenya',
    continent: Continent.AF,
    dialCode: DialCode(254),
    currency: Currency.KES,
    languages: <Language>[Language.EN, Language.SW],
  ),
  @JsonValue('KG')
  kyrgyzstan(
    capital: 'Bishkek',
    nativeName: 'Кыргызстан',
    flag: '🇰🇬',
    iso: IsoCode.KG,
    fullName: 'Kyrgyzstan',
    continent: Continent.AS,
    dialCode: DialCode(996),
    currency: Currency.KGS,
    languages: <Language>[Language.KY, Language.RU],
  ),
  @JsonValue('KH')
  cambodia(
    capital: 'Phnom Penh',
    nativeName: 'Kâmpŭchéa',
    flag: '🇰🇭',
    iso: IsoCode.KH,
    fullName: 'Cambodia',
    continent: Continent.AS,
    dialCode: DialCode(855),
    currency: Currency.KHR,
    languages: <Language>[Language.KM],
  ),
  @JsonValue('KI')
  kiribati(
    capital: 'South Tarawa',
    nativeName: 'Kiribati',
    flag: '🇰🇮',
    iso: IsoCode.KI,
    fullName: 'Kiribati',
    continent: Continent.OC,
    dialCode: DialCode(686),
    currency: Currency.AUD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('KM')
  comoros(
    capital: 'Moroni',
    nativeName: 'Komori',
    flag: '🇰🇲',
    iso: IsoCode.KM,
    fullName: 'Comoros',
    continent: Continent.AF,
    dialCode: DialCode(269),
    currency: Currency.KMF,
    languages: <Language>[Language.AR, Language.FR],
  ),
  @JsonValue('KN')
  saintKittsAndNevis(
    capital: 'Basseterre',
    nativeName: 'Saint Kitts and Nevis',
    flag: '🇰🇳',
    iso: IsoCode.KN,
    fullName: 'Saint Kitts and Nevis',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('KP')
  northKorea(
    capital: 'Pyongyang',
    nativeName: '북한',
    flag: '🇰🇵',
    iso: IsoCode.KP,
    fullName: 'North Korea',
    continent: Continent.AS,
    dialCode: DialCode(850),
    currency: Currency.KPW,
    languages: <Language>[Language.KO],
  ),
  @JsonValue('KR')
  southKorea(
    capital: 'Seoul',
    nativeName: '대한민국',
    flag: '🇰🇷',
    iso: IsoCode.KR,
    fullName: 'South Korea',
    continent: Continent.AS,
    dialCode: DialCode(82),
    currency: Currency.KRW,
    languages: <Language>[Language.KO],
  ),
  @JsonValue('KW')
  kuwait(
    capital: 'Kuwait City',
    nativeName: 'الكويت',
    flag: '🇰🇼',
    iso: IsoCode.KW,
    fullName: 'Kuwait',
    continent: Continent.AS,
    dialCode: DialCode(965),
    currency: Currency.KWD,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('KY')
  caymanIslands(
    capital: 'George Town',
    nativeName: 'Cayman Islands',
    flag: '🇰🇾',
    iso: IsoCode.KY,
    fullName: 'Cayman Islands',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.KYD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('KZ')
  kazakhstan(
    capital: 'Astana',
    nativeName: 'Қазақстан',
    flag: '🇰🇿',
    iso: IsoCode.KZ,
    fullName: 'Kazakhstan',
    continent: Continent.AS,
    dialCode: DialCode(7),
    currency: Currency.KZT,
    languages: <Language>[Language.KK, Language.RU],
  ),
  @JsonValue('LA')
  laos(
    capital: 'Vientiane',
    nativeName: 'ສປປລາວ',
    flag: '🇱🇦',
    iso: IsoCode.LA,
    fullName: 'Laos',
    continent: Continent.AS,
    dialCode: DialCode(856),
    currency: Currency.LAK,
    languages: <Language>[Language.LO],
  ),
  @JsonValue('LB')
  lebanon(
    capital: 'Beirut',
    nativeName: 'لبنان',
    flag: '🇱🇧',
    iso: IsoCode.LB,
    fullName: 'Lebanon',
    continent: Continent.AS,
    dialCode: DialCode(961),
    currency: Currency.LBP,
    languages: <Language>[Language.AR, Language.FR],
  ),
  @JsonValue('LC')
  saintLucia(
    capital: 'Castries',
    nativeName: 'Saint Lucia',
    flag: '🇱🇨',
    iso: IsoCode.LC,
    fullName: 'Saint Lucia',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('LI')
  liechtenstein(
    capital: 'Vaduz',
    nativeName: 'Liechtenstein',
    flag: '🇱🇮',
    iso: IsoCode.LI,
    fullName: 'Liechtenstein',
    continent: Continent.EU,
    dialCode: DialCode(423),
    currency: Currency.CHF,
    languages: <Language>[Language.DE],
  ),
  @JsonValue('LK')
  sriLanka(
    capital: 'Colombo',
    nativeName: 'śrī laṃkāva',
    flag: '🇱🇰',
    iso: IsoCode.LK,
    fullName: 'Sri Lanka',
    continent: Continent.AS,
    dialCode: DialCode(94),
    currency: Currency.LKR,
    languages: <Language>[Language.SI, Language.TA],
  ),
  @JsonValue('LR')
  liberia(
    capital: 'Monrovia',
    nativeName: 'Liberia',
    flag: '🇱🇷',
    iso: IsoCode.LR,
    fullName: 'Liberia',
    continent: Continent.AF,
    dialCode: DialCode(231),
    currency: Currency.LRD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('LS')
  lesotho(
    capital: 'Maseru',
    nativeName: 'Lesotho',
    flag: '🇱🇸',
    iso: IsoCode.LS,
    fullName: 'Lesotho',
    continent: Continent.AF,
    dialCode: DialCode(266),
    currency: Currency.LSL,
    languages: <Language>[Language.EN, Language.ST],
  ),
  @JsonValue('LT')
  lithuania(
    capital: 'Vilnius',
    nativeName: 'Lietuva',
    flag: '🇱🇹',
    iso: IsoCode.LT,
    fullName: 'Lithuania',
    continent: Continent.EU,
    dialCode: DialCode(370),
    currency: Currency.EUR,
    languages: <Language>[Language.LT],
  ),
  @JsonValue('LU')
  luxembourg(
    capital: 'Luxembourg',
    nativeName: 'Luxembourg',
    flag: '🇱🇺',
    iso: IsoCode.LU,
    fullName: 'Luxembourg',
    continent: Continent.EU,
    dialCode: DialCode(352),
    currency: Currency.EUR,
    languages: <Language>[Language.FR, Language.DE, Language.LB],
  ),
  @JsonValue('LV')
  latvia(
    capital: 'Riga',
    nativeName: 'Latvija',
    flag: '🇱🇻',
    iso: IsoCode.LV,
    fullName: 'Latvia',
    continent: Continent.EU,
    dialCode: DialCode(371),
    currency: Currency.EUR,
    languages: <Language>[Language.LV],
  ),
  @JsonValue('LY')
  libya(
    capital: 'Tripoli',
    nativeName: 'ليبيا',
    flag: '🇱🇾',
    iso: IsoCode.LY,
    fullName: 'Libya',
    continent: Continent.AF,
    dialCode: DialCode(218),
    currency: Currency.LYD,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('MA')
  morocco(
    capital: 'Rabat',
    nativeName: 'المغرب',
    flag: '🇲🇦',
    iso: IsoCode.MA,
    fullName: 'Morocco',
    continent: Continent.AF,
    dialCode: DialCode(212),
    currency: Currency.MAD,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('MC')
  monaco(
    capital: 'Monaco',
    nativeName: 'Monaco',
    flag: '🇲🇨',
    iso: IsoCode.MC,
    fullName: 'Monaco',
    continent: Continent.EU,
    dialCode: DialCode(377),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('MD')
  moldova(
    capital: 'Chișinău',
    nativeName: 'Moldova',
    flag: '🇲🇩',
    iso: IsoCode.MD,
    fullName: 'Moldova',
    continent: Continent.EU,
    dialCode: DialCode(373),
    currency: Currency.MDL,
    languages: <Language>[Language.RO],
  ),
  @JsonValue('ME')
  montenegro(
    capital: 'Podgorica',
    nativeName: 'Црна Гора',
    flag: '🇲🇪',
    iso: IsoCode.ME,
    fullName: 'Montenegro',
    continent: Continent.EU,
    dialCode: DialCode(382),
    currency: Currency.EUR,
    languages: <Language>[Language.SR, Language.BS, Language.SQ, Language.HR],
  ),
  @JsonValue('MF')
  saintMartin(
    capital: 'Marigot',
    nativeName: 'Saint-Martin',
    flag: '🇲🇫',
    iso: IsoCode.MF,
    fullName: 'Saint Martin',
    continent: Continent.NA,
    dialCode: DialCode(590),
    currency: Currency.EUR,
    languages: <Language>[Language.EN, Language.FR, Language.NL],
  ),
  @JsonValue('MG')
  madagascar(
    capital: 'Antananarivo',
    nativeName: 'Madagasikara',
    flag: '🇲🇬',
    iso: IsoCode.MG,
    fullName: 'Madagascar',
    continent: Continent.AF,
    dialCode: DialCode(261),
    currency: Currency.MGA,
    languages: <Language>[Language.FR, Language.MG],
  ),
  @JsonValue('MH')
  marshallIslands(
    capital: 'Majuro',
    nativeName: 'M̧ajeļ',
    flag: '🇲🇭',
    iso: IsoCode.MH,
    fullName: 'Marshall Islands',
    continent: Continent.OC,
    dialCode: DialCode(692),
    currency: Currency.USD,
    languages: <Language>[Language.EN, Language.MH],
  ),
  @JsonValue('MK')
  northMacedonia(
    capital: 'Skopje',
    nativeName: 'Северна Македонија',
    flag: '🇲🇰',
    iso: IsoCode.MK,
    fullName: 'North Macedonia',
    continent: Continent.EU,
    dialCode: DialCode(389),
    currency: Currency.MKD,
    languages: <Language>[Language.MK],
  ),
  @JsonValue('ML')
  mali(
    capital: 'Bamako',
    nativeName: 'Mali',
    flag: '🇲🇱',
    iso: IsoCode.ML,
    fullName: 'Mali',
    continent: Continent.AF,
    dialCode: DialCode(223),
    currency: Currency.XOF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('MM')
  myanmarBurma(
    capital: 'Naypyidaw',
    nativeName: 'မြန်မာ',
    flag: '🇲🇲',
    iso: IsoCode.MM,
    fullName: 'Myanmar [Burma]',
    continent: Continent.AS,
    dialCode: DialCode(95),
    currency: Currency.MMK,
    languages: <Language>[Language.MY],
  ),
  @JsonValue('MN')
  mongolia(
    capital: 'Ulan Bator',
    nativeName: 'Монгол улс',
    flag: '🇲🇳',
    iso: IsoCode.MN,
    fullName: 'Mongolia',
    continent: Continent.AS,
    dialCode: DialCode(976),
    currency: Currency.MNT,
    languages: <Language>[Language.MN],
  ),
  @JsonValue('MO')
  macao(
    capital: 'Macao',
    nativeName: '澳門',
    flag: '🇲🇴',
    iso: IsoCode.MO,
    fullName: 'Macao',
    continent: Continent.AS,
    dialCode: DialCode(853),
    currency: Currency.MOP,
    languages: <Language>[Language.ZH, Language.PT],
  ),
  @JsonValue('MP')
  northernMarianaIslands(
    capital: 'Saipan',
    nativeName: 'Northern Mariana Islands',
    flag: '🇲🇵',
    iso: IsoCode.MP,
    fullName: 'Northern Mariana Islands',
    continent: Continent.OC,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN, Language.CH],
  ),
  @JsonValue('MQ')
  martinique(
    capital: 'Fort-de-France',
    nativeName: 'Martinique',
    flag: '🇲🇶',
    iso: IsoCode.MQ,
    fullName: 'Martinique',
    continent: Continent.NA,
    dialCode: DialCode(596),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('MR')
  mauritania(
    capital: 'Nouakchott',
    nativeName: 'موريتانيا',
    flag: '🇲🇷',
    iso: IsoCode.MR,
    fullName: 'Mauritania',
    continent: Continent.AF,
    dialCode: DialCode(222),
    currency: Currency.MRU,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('MS')
  montserrat(
    capital: 'Plymouth',
    nativeName: 'Montserrat',
    flag: '🇲🇸',
    iso: IsoCode.MS,
    fullName: 'Montserrat',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('MT')
  malta(
    capital: 'Valletta',
    nativeName: 'Malta',
    flag: '🇲🇹',
    iso: IsoCode.MT,
    fullName: 'Malta',
    continent: Continent.EU,
    dialCode: DialCode(356),
    currency: Currency.EUR,
    languages: <Language>[Language.MT, Language.EN],
  ),
  @JsonValue('MU')
  mauritius(
    capital: 'Port Louis',
    nativeName: 'Maurice',
    flag: '🇲🇺',
    iso: IsoCode.MU,
    fullName: 'Mauritius',
    continent: Continent.AF,
    dialCode: DialCode(230),
    currency: Currency.MUR,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('MV')
  maldives(
    capital: 'Malé',
    nativeName: 'Maldives',
    flag: '🇲🇻',
    iso: IsoCode.MV,
    fullName: 'Maldives',
    continent: Continent.AS,
    dialCode: DialCode(960),
    currency: Currency.MVR,
    languages: <Language>[Language.DV],
  ),
  @JsonValue('MW')
  malawi(
    capital: 'Lilongwe',
    nativeName: 'Malawi',
    flag: '🇲🇼',
    iso: IsoCode.MW,
    fullName: 'Malawi',
    continent: Continent.AF,
    dialCode: DialCode(265),
    currency: Currency.MWK,
    languages: <Language>[Language.EN, Language.NY],
  ),
  @JsonValue('MX')
  mexico(
    capital: 'Mexico City',
    nativeName: 'México',
    flag: '🇲🇽',
    iso: IsoCode.MX,
    fullName: 'Mexico',
    continent: Continent.NA,
    dialCode: DialCode(52),
    currency: Currency.MXN,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('MY')
  malaysia(
    capital: 'Kuala Lumpur',
    nativeName: 'Malaysia',
    flag: '🇲🇾',
    iso: IsoCode.MY,
    fullName: 'Malaysia',
    continent: Continent.AS,
    dialCode: DialCode(60),
    currency: Currency.MYR,
    languages: <Language>[Language.MS],
  ),
  @JsonValue('MZ')
  mozambique(
    capital: 'Maputo',
    nativeName: 'Moçambique',
    flag: '🇲🇿',
    iso: IsoCode.MZ,
    fullName: 'Mozambique',
    continent: Continent.AF,
    dialCode: DialCode(258),
    currency: Currency.MZN,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('NA')
  namibia(
    capital: 'Windhoek',
    nativeName: 'Namibia',
    flag: '🇳🇦',
    iso: IsoCode.NA,
    fullName: 'Namibia',
    continent: Continent.AF,
    dialCode: DialCode(264),
    currency: Currency.NAD,
    languages: <Language>[Language.EN, Language.AF],
  ),
  @JsonValue('NC')
  newCaledonia(
    capital: 'Nouméa',
    nativeName: 'Nouvelle-Calédonie',
    flag: '🇳🇨',
    iso: IsoCode.NC,
    fullName: 'New Caledonia',
    continent: Continent.OC,
    dialCode: DialCode(687),
    currency: Currency.XPF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('NE')
  niger(
    capital: 'Niamey',
    nativeName: 'Niger',
    flag: '🇳🇪',
    iso: IsoCode.NE,
    fullName: 'Niger',
    continent: Continent.AF,
    dialCode: DialCode(227),
    currency: Currency.XOF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('NF')
  norfolkIsland(
    capital: 'Kingston',
    nativeName: 'Norfolk Island',
    flag: '🇳🇫',
    iso: IsoCode.NF,
    fullName: 'Norfolk Island',
    continent: Continent.OC,
    dialCode: DialCode(672),
    currency: Currency.AUD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('NG')
  nigeria(
    capital: 'Abuja',
    nativeName: 'Nigeria',
    flag: '🇳🇬',
    iso: IsoCode.NG,
    fullName: 'Nigeria',
    continent: Continent.AF,
    dialCode: DialCode(234),
    currency: Currency.NGN,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('NI')
  nicaragua(
    capital: 'Managua',
    nativeName: 'Nicaragua',
    flag: '🇳🇮',
    iso: IsoCode.NI,
    fullName: 'Nicaragua',
    continent: Continent.NA,
    dialCode: DialCode(505),
    currency: Currency.NIO,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('NL')
  netherlands(
    capital: 'Amsterdam',
    nativeName: 'Nederland',
    flag: '🇳🇱',
    iso: IsoCode.NL,
    fullName: 'Netherlands',
    continent: Continent.EU,
    dialCode: DialCode(31),
    currency: Currency.EUR,
    languages: <Language>[Language.NL],
  ),
  @JsonValue('NO')
  norway(
    capital: 'Oslo',
    nativeName: 'Norge',
    flag: '🇳🇴',
    iso: IsoCode.NO,
    fullName: 'Norway',
    continent: Continent.EU,
    dialCode: DialCode(47),
    currency: Currency.NOK,
    languages: <Language>[Language.NO, Language.NB, Language.NN],
  ),
  @JsonValue('NP')
  nepal(
    capital: 'Kathmandu',
    nativeName: 'नपल',
    flag: '🇳🇵',
    iso: IsoCode.NP,
    fullName: 'Nepal',
    continent: Continent.AS,
    dialCode: DialCode(977),
    currency: Currency.NPR,
    languages: <Language>[Language.NE],
  ),
  @JsonValue('NR')
  nauru(
    capital: 'Yaren',
    nativeName: 'Nauru',
    flag: '🇳🇷',
    iso: IsoCode.NR,
    fullName: 'Nauru',
    continent: Continent.OC,
    dialCode: DialCode(674),
    currency: Currency.AUD,
    languages: <Language>[Language.EN, Language.NA],
  ),
  @JsonValue('NU')
  niue(
    capital: 'Alofi',
    nativeName: 'Niuē',
    flag: '🇳🇺',
    iso: IsoCode.NU,
    fullName: 'Niue',
    continent: Continent.OC,
    dialCode: DialCode(683),
    currency: Currency.NZD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('NZ')
  newZealand(
    capital: 'Wellington',
    nativeName: 'New Zealand',
    flag: '🇳🇿',
    iso: IsoCode.NZ,
    fullName: 'New Zealand',
    continent: Continent.OC,
    dialCode: DialCode(64),
    currency: Currency.NZD,
    languages: <Language>[Language.EN, Language.MI],
  ),
  @JsonValue('OM')
  oman(
    capital: 'Muscat',
    nativeName: 'عمان',
    flag: '🇴🇲',
    iso: IsoCode.OM,
    fullName: 'Oman',
    continent: Continent.AS,
    dialCode: DialCode(968),
    currency: Currency.OMR,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('PA')
  panama(
    capital: 'Panama City',
    nativeName: 'Panamá',
    flag: '🇵🇦',
    iso: IsoCode.PA,
    fullName: 'Panama',
    continent: Continent.NA,
    dialCode: DialCode(507),
    currency: Currency.PAB,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('PE')
  peru(
    capital: 'Lima',
    nativeName: 'Perú',
    flag: '🇵🇪',
    iso: IsoCode.PE,
    fullName: 'Peru',
    continent: Continent.SA,
    dialCode: DialCode(51),
    currency: Currency.PEN,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('PF')
  frenchPolynesia(
    capital: 'Papeetē',
    nativeName: 'Polynésie française',
    flag: '🇵🇫',
    iso: IsoCode.PF,
    fullName: 'French Polynesia',
    continent: Continent.OC,
    dialCode: DialCode(689),
    currency: Currency.XPF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('PG')
  papuaNewGuinea(
    capital: 'Port Moresby',
    nativeName: 'Papua Niugini',
    flag: '🇵🇬',
    iso: IsoCode.PG,
    fullName: 'Papua New Guinea',
    continent: Continent.OC,
    dialCode: DialCode(675),
    currency: Currency.PGK,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('PH')
  philippines(
    capital: 'Manila',
    nativeName: 'Pilipinas',
    flag: '🇵🇭',
    iso: IsoCode.PH,
    fullName: 'Philippines',
    continent: Continent.AS,
    dialCode: DialCode(63),
    currency: Currency.PHP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('PK')
  pakistan(
    capital: 'Islamabad',
    nativeName: 'Pakistan',
    flag: '🇵🇰',
    iso: IsoCode.PK,
    fullName: 'Pakistan',
    continent: Continent.AS,
    dialCode: DialCode(92),
    currency: Currency.PKR,
    languages: <Language>[Language.EN, Language.UR],
  ),
  @JsonValue('PL')
  poland(
    capital: 'Warsaw',
    nativeName: 'Polska',
    flag: '🇵🇱',
    iso: IsoCode.PL,
    fullName: 'Poland',
    continent: Continent.EU,
    dialCode: DialCode(48),
    currency: Currency.PLN,
    languages: <Language>[Language.PL],
  ),
  @JsonValue('PM')
  saintPierreAndMiquelon(
    capital: 'Saint-Pierre',
    nativeName: 'Saint-Pierre-et-Miquelon',
    flag: '🇵🇲',
    iso: IsoCode.PM,
    fullName: 'Saint Pierre and Miquelon',
    continent: Continent.NA,
    dialCode: DialCode(508),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('PR')
  puertoRico(
    capital: 'San Juan',
    nativeName: 'Puerto Rico',
    flag: '🇵🇷',
    iso: IsoCode.PR,
    fullName: 'Puerto Rico',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.ES, Language.EN],
  ),
  @JsonValue('PS')
  palestine(
    capital: 'Ramallah',
    nativeName: 'فلسطين',
    flag: '🇵🇸',
    iso: IsoCode.PS,
    fullName: 'Palestine',
    continent: Continent.AS,
    dialCode: DialCode(970),
    currency: Currency.ILS,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('PT')
  portugal(
    capital: 'Lisbon',
    nativeName: 'Portugal',
    flag: '🇵🇹',
    iso: IsoCode.PT,
    fullName: 'Portugal',
    continent: Continent.EU,
    dialCode: DialCode(351),
    currency: Currency.EUR,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('PW')
  palau(
    capital: 'Ngerulmud',
    nativeName: 'Palau',
    flag: '🇵🇼',
    iso: IsoCode.PW,
    fullName: 'Palau',
    continent: Continent.OC,
    dialCode: DialCode(680),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('PY')
  paraguay(
    capital: 'Asunción',
    nativeName: 'Paraguay',
    flag: '🇵🇾',
    iso: IsoCode.PY,
    fullName: 'Paraguay',
    continent: Continent.SA,
    dialCode: DialCode(595),
    currency: Currency.PYG,
    languages: <Language>[Language.ES, Language.GN],
  ),
  @JsonValue('QA')
  qatar(
    capital: 'Doha',
    nativeName: 'قطر',
    flag: '🇶🇦',
    iso: IsoCode.QA,
    fullName: 'Qatar',
    continent: Continent.AS,
    dialCode: DialCode(974),
    currency: Currency.QAR,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('RE')
  reunion(
    capital: 'Saint-Denis',
    nativeName: 'La Réunion',
    flag: '🇷🇪',
    iso: IsoCode.RE,
    fullName: 'Réunion',
    continent: Continent.AF,
    dialCode: DialCode(262),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('RO')
  romania(
    capital: 'Bucharest',
    nativeName: 'România',
    flag: '🇷🇴',
    iso: IsoCode.RO,
    fullName: 'Romania',
    continent: Continent.EU,
    dialCode: DialCode(40),
    currency: Currency.RON,
    languages: <Language>[Language.RO],
  ),
  @JsonValue('RS')
  serbia(
    capital: 'Belgrade',
    nativeName: 'Србија',
    flag: '🇷🇸',
    iso: IsoCode.RS,
    fullName: 'Serbia',
    continent: Continent.EU,
    dialCode: DialCode(381),
    currency: Currency.RSD,
    languages: <Language>[Language.SR],
  ),
  @JsonValue('RU')
  russia(
    capital: 'Moscow',
    nativeName: 'Россия',
    flag: '🇷🇺',
    iso: IsoCode.RU,
    fullName: 'Russia',
    continent: Continent.EU,
    dialCode: DialCode(7),
    currency: Currency.RUB,
    languages: <Language>[Language.RU],
  ),
  @JsonValue('RW')
  rwanda(
    capital: 'Kigali',
    nativeName: 'Rwanda',
    flag: '🇷🇼',
    iso: IsoCode.RW,
    fullName: 'Rwanda',
    continent: Continent.AF,
    dialCode: DialCode(250),
    currency: Currency.RWF,
    languages: <Language>[Language.RW, Language.EN, Language.FR],
  ),
  @JsonValue('SA')
  saudiArabia(
    capital: 'Riyadh',
    nativeName: 'العربية السعودية',
    flag: '🇸🇦',
    iso: IsoCode.SA,
    fullName: 'Saudi Arabia',
    continent: Continent.AS,
    dialCode: DialCode(966),
    currency: Currency.SAR,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('SB')
  solomonIslands(
    capital: 'Honiara',
    nativeName: 'Solomon Islands',
    flag: '🇸🇧',
    iso: IsoCode.SB,
    fullName: 'Solomon Islands',
    continent: Continent.OC,
    dialCode: DialCode(677),
    currency: Currency.SBD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('SC')
  seychelles(
    capital: 'Victoria',
    nativeName: 'Seychelles',
    flag: '🇸🇨',
    iso: IsoCode.SC,
    fullName: 'Seychelles',
    continent: Continent.AF,
    dialCode: DialCode(248),
    currency: Currency.SCR,
    languages: <Language>[Language.FR, Language.EN],
  ),
  @JsonValue('SD')
  sudan(
    capital: 'Khartoum',
    nativeName: 'السودان',
    flag: '🇸🇩',
    iso: IsoCode.SD,
    fullName: 'Sudan',
    continent: Continent.AF,
    dialCode: DialCode(249),
    currency: Currency.SDG,
    languages: <Language>[Language.AR, Language.EN],
  ),
  @JsonValue('SE')
  sweden(
    capital: 'Stockholm',
    nativeName: 'Sverige',
    flag: '🇸🇪',
    iso: IsoCode.SE,
    fullName: 'Sweden',
    continent: Continent.EU,
    dialCode: DialCode(46),
    currency: Currency.SEK,
    languages: <Language>[Language.SV],
  ),
  @JsonValue('SG')
  singapore(
    capital: 'Singapore',
    nativeName: 'Singapore',
    flag: '🇸🇬',
    iso: IsoCode.SG,
    fullName: 'Singapore',
    continent: Continent.AS,
    dialCode: DialCode(65),
    currency: Currency.SGD,
    languages: <Language>[Language.EN, Language.MS, Language.TA, Language.ZH],
  ),
  @JsonValue('SH')
  saintHelena(
    capital: 'Jamestown',
    nativeName: 'Saint Helena',
    flag: '🇸🇭',
    iso: IsoCode.SH,
    fullName: 'Saint Helena',
    continent: Continent.AF,
    dialCode: DialCode(290),
    currency: Currency.SHP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('SI')
  slovenia(
    capital: 'Ljubljana',
    nativeName: 'Slovenija',
    flag: '🇸🇮',
    iso: IsoCode.SI,
    fullName: 'Slovenia',
    continent: Continent.EU,
    dialCode: DialCode(386),
    currency: Currency.EUR,
    languages: <Language>[Language.SL],
  ),
  @JsonValue('SJ')
  svalbardAndJanMayen(
    capital: 'Longyearbyen',
    nativeName: 'Svalbard og Jan Mayen',
    flag: '🇸🇯',
    iso: IsoCode.SJ,
    fullName: 'Svalbard and Jan Mayen',
    continent: Continent.EU,
    dialCode: DialCode(47),
    currency: Currency.NOK,
    languages: <Language>[Language.NO],
  ),
  @JsonValue('SK')
  slovakia(
    capital: 'Bratislava',
    nativeName: 'Slovensko',
    flag: '🇸🇰',
    iso: IsoCode.SK,
    fullName: 'Slovakia',
    continent: Continent.EU,
    dialCode: DialCode(421),
    currency: Currency.EUR,
    languages: <Language>[Language.SK],
  ),
  @JsonValue('SL')
  sierraLeone(
    capital: 'Freetown',
    nativeName: 'Sierra Leone',
    flag: '🇸🇱',
    iso: IsoCode.SL,
    fullName: 'Sierra Leone',
    continent: Continent.AF,
    dialCode: DialCode(232),
    currency: Currency.SLL,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('SM')
  sanMarino(
    capital: 'City of San Marino',
    nativeName: 'San Marino',
    flag: '🇸🇲',
    iso: IsoCode.SM,
    fullName: 'San Marino',
    continent: Continent.EU,
    dialCode: DialCode(378),
    currency: Currency.EUR,
    languages: <Language>[Language.IT],
  ),
  @JsonValue('SN')
  senegal(
    capital: 'Dakar',
    nativeName: 'Sénégal',
    flag: '🇸🇳',
    iso: IsoCode.SN,
    fullName: 'Senegal',
    continent: Continent.AF,
    dialCode: DialCode(221),
    currency: Currency.XOF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('SO')
  somalia(
    capital: 'Mogadishu',
    nativeName: 'Soomaaliya',
    flag: '🇸🇴',
    iso: IsoCode.SO,
    fullName: 'Somalia',
    continent: Continent.AF,
    dialCode: DialCode(252),
    currency: Currency.SOS,
    languages: <Language>[Language.SO, Language.AR],
  ),
  @JsonValue('SR')
  suriname(
    capital: 'Paramaribo',
    nativeName: 'Suriname',
    flag: '🇸🇷',
    iso: IsoCode.SR,
    fullName: 'Suriname',
    continent: Continent.SA,
    dialCode: DialCode(597),
    currency: Currency.SRD,
    languages: <Language>[Language.NL],
  ),
  @JsonValue('SS')
  southSudan(
    capital: 'Juba',
    nativeName: 'South Sudan',
    flag: '🇸🇸',
    iso: IsoCode.SS,
    fullName: 'South Sudan',
    continent: Continent.AF,
    dialCode: DialCode(211),
    currency: Currency.SSP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('ST')
  saoTomeAndPrincipe(
    capital: 'São Tomé',
    nativeName: 'São Tomé e Príncipe',
    flag: '🇸🇹',
    iso: IsoCode.ST,
    fullName: 'São Tomé and Príncipe',
    continent: Continent.AF,
    dialCode: DialCode(239),
    currency: Currency.STN,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('SV')
  elSalvador(
    capital: 'San Salvador',
    nativeName: 'El Salvador',
    flag: '🇸🇻',
    iso: IsoCode.SV,
    fullName: 'El Salvador',
    continent: Continent.NA,
    dialCode: DialCode(503),
    currency: Currency.SVC,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('SX')
  sintMaarten(
    capital: 'Philipsburg',
    nativeName: 'Sint Maarten',
    flag: '🇸🇽',
    iso: IsoCode.SX,
    fullName: 'Sint Maarten',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.ANG,
    languages: <Language>[Language.NL, Language.EN],
  ),
  @JsonValue('SY')
  syria(
    capital: 'Damascus',
    nativeName: 'سوريا',
    flag: '🇸🇾',
    iso: IsoCode.SY,
    fullName: 'Syria',
    continent: Continent.AS,
    dialCode: DialCode(963),
    currency: Currency.SYP,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('SZ')
  swaziland(
    capital: 'Lobamba',
    nativeName: 'Swaziland',
    flag: '🇸🇿',
    iso: IsoCode.SZ,
    fullName: 'Swaziland',
    continent: Continent.AF,
    dialCode: DialCode(268),
    currency: Currency.SZL,
    languages: <Language>[Language.EN, Language.SS],
  ),
  @JsonValue('TA')
  tristanDaCunha(
    capital: 'Edinburgh of the Seven Seas',
    nativeName: 'Tristan da Cunha',
    flag: '🇹🇦',
    iso: IsoCode.TA,
    fullName: 'Tristan da Cunha',
    continent: Continent.AF,
    dialCode: DialCode(290),
    currency: Currency.GBP,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('TC')
  turksAndCaicosIslands(
    capital: 'Cockburn Town',
    nativeName: 'Turks and Caicos Islands',
    flag: '🇹🇨',
    iso: IsoCode.TC,
    fullName: 'Turks and Caicos Islands',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('TR')
  turkey(
    capital: 'Ankara',
    nativeName: 'Türkiye',
    flag: '🇹🇷',
    iso: IsoCode.TR,
    fullName: 'Turkey',
    continent: Continent.AS,
    dialCode: DialCode(90),
    currency: Currency.TRY,
    languages: <Language>[Language.TR],
  ),
  @JsonValue('TD')
  chad(
    capital: '''N'Djamena''',
    nativeName: 'Tchad',
    flag: '🇹🇩',
    iso: IsoCode.TD,
    fullName: 'Chad',
    continent: Continent.AF,
    dialCode: DialCode(235),
    currency: Currency.XAF,
    languages: <Language>[Language.FR, Language.AR],
  ),
  @JsonValue('TG')
  togo(
    capital: 'Lomé',
    nativeName: 'Togo',
    flag: '🇹🇬',
    iso: IsoCode.TG,
    fullName: 'Togo',
    continent: Continent.AF,
    dialCode: DialCode(228),
    currency: Currency.XOF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('TH')
  thailand(
    capital: 'Bangkok',
    nativeName: 'ประเทศไทย',
    flag: '🇹🇭',
    iso: IsoCode.TH,
    fullName: 'Thailand',
    continent: Continent.AS,
    dialCode: DialCode(66),
    currency: Currency.THB,
    languages: <Language>[Language.TH],
  ),
  @JsonValue('TJ')
  tajikistan(
    capital: 'Dushanbe',
    nativeName: 'Тоҷикистон',
    flag: '🇹🇯',
    iso: IsoCode.TJ,
    fullName: 'Tajikistan',
    continent: Continent.AS,
    dialCode: DialCode(992),
    currency: Currency.TJS,
    languages: <Language>[Language.TG, Language.RU],
  ),
  @JsonValue('TK')
  tokelau(
    capital: 'Fakaofo',
    nativeName: 'Tokelau',
    flag: '🇹🇰',
    iso: IsoCode.TK,
    fullName: 'Tokelau',
    continent: Continent.OC,
    dialCode: DialCode(690),
    currency: Currency.NZD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('TL')
  eastTimor(
    capital: 'Dili',
    nativeName: 'Timor-Leste',
    flag: '🇹🇱',
    iso: IsoCode.TL,
    fullName: 'East Timor',
    continent: Continent.OC,
    dialCode: DialCode(670),
    currency: Currency.USD,
    languages: <Language>[Language.PT],
  ),
  @JsonValue('TM')
  turkmenistan(
    capital: 'Ashgabat',
    nativeName: 'Türkmenistan',
    flag: '🇹🇲',
    iso: IsoCode.TM,
    fullName: 'Turkmenistan',
    continent: Continent.AS,
    dialCode: DialCode(993),
    currency: Currency.TMT,
    languages: <Language>[Language.TK, Language.RU],
  ),
  @JsonValue('TN')
  tunisia(
    capital: 'Tunis',
    nativeName: 'تونس',
    flag: '🇹🇳',
    iso: IsoCode.TN,
    fullName: 'Tunisia',
    continent: Continent.AF,
    dialCode: DialCode(216),
    currency: Currency.TND,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('TO')
  tonga(
    capital: '''Nuku'alofa''',
    nativeName: 'Tonga',
    flag: '🇹🇴',
    iso: IsoCode.TO,
    fullName: 'Tonga',
    continent: Continent.OC,
    dialCode: DialCode(676),
    currency: Currency.TOP,
    languages: <Language>[Language.EN, Language.TO],
  ),
  @JsonValue('TT')
  trinidadAndTobago(
    capital: 'Port of Spain',
    nativeName: 'Trinidad and Tobago',
    flag: '🇹🇹',
    iso: IsoCode.TT,
    fullName: 'Trinidad and Tobago',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.TTD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('TV')
  tuvalu(
    capital: 'Funafuti',
    nativeName: 'Tuvalu',
    flag: '🇹🇻',
    iso: IsoCode.TV,
    fullName: 'Tuvalu',
    continent: Continent.OC,
    dialCode: DialCode(688),
    currency: Currency.AUD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('TW')
  taiwan(
    capital: 'Taipei',
    nativeName: '臺灣',
    flag: '🇹🇼',
    iso: IsoCode.TW,
    fullName: 'Taiwan',
    continent: Continent.AS,
    dialCode: DialCode(886),
    currency: Currency.TWD,
    languages: <Language>[Language.ZH],
  ),
  @JsonValue('TZ')
  tanzania(
    capital: 'Dodoma',
    nativeName: 'Tanzania',
    flag: '🇹🇿',
    iso: IsoCode.TZ,
    fullName: 'Tanzania',
    continent: Continent.AF,
    dialCode: DialCode(255),
    currency: Currency.TZS,
    languages: <Language>[Language.SW, Language.EN],
  ),
  @JsonValue('UA')
  ukraine(
    capital: 'Kyiv',
    nativeName: 'Україна',
    flag: '🇺🇦',
    iso: IsoCode.UA,
    fullName: 'Ukraine',
    continent: Continent.EU,
    dialCode: DialCode(380),
    currency: Currency.UAH,
    languages: <Language>[Language.UK],
  ),
  @JsonValue('UG')
  uganda(
    capital: 'Kampala',
    nativeName: 'Uganda',
    flag: '🇺🇬',
    iso: IsoCode.UG,
    fullName: 'Uganda',
    continent: Continent.AF,
    dialCode: DialCode(256),
    currency: Currency.UGX,
    languages: <Language>[Language.EN, Language.SW],
  ),
  @JsonValue('US')
  unitedStates(
    capital: 'Washington D.C.',
    nativeName: 'United States',
    flag: '🇺🇸',
    iso: IsoCode.US,
    fullName: 'United States',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('UY')
  uruguay(
    capital: 'Montevideo',
    nativeName: 'Uruguay',
    flag: '🇺🇾',
    iso: IsoCode.UY,
    fullName: 'Uruguay',
    continent: Continent.SA,
    dialCode: DialCode(598),
    currency: Currency.UYU,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('UZ')
  uzbekistan(
    capital: 'Tashkent',
    nativeName: 'O‘zbekiston',
    flag: '🇺🇿',
    iso: IsoCode.UZ,
    fullName: 'Uzbekistan',
    continent: Continent.AS,
    dialCode: DialCode(998),
    currency: Currency.UZS,
    languages: <Language>[Language.UZ, Language.RU],
  ),
  @JsonValue('VA')
  vaticanCity(
    capital: 'Vatican City',
    nativeName: 'Vaticano',
    flag: '🇻🇦',
    iso: IsoCode.VA,
    fullName: 'Vatican City',
    continent: Continent.EU,
    dialCode: DialCode(39),
    currency: Currency.EUR,
    languages: <Language>[Language.IT, Language.LA],
  ),
  @JsonValue('VC')
  saintVincentAndTheGrenadines(
    capital: 'Kingstown',
    nativeName: 'Saint Vincent and the Grenadines',
    flag: '🇻🇨',
    iso: IsoCode.VC,
    fullName: 'Saint Vincent and the Grenadines',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.XCD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('VE')
  venezuela(
    capital: 'Caracas',
    nativeName: 'Venezuela',
    flag: '🇻🇪',
    iso: IsoCode.VE,
    fullName: 'Venezuela',
    continent: Continent.SA,
    dialCode: DialCode(58),
    currency: Currency.VES,
    languages: <Language>[Language.ES],
  ),
  @JsonValue('VG')
  britishVirginIslands(
    capital: 'Road Town',
    nativeName: 'British Virgin Islands',
    flag: '🇻🇬',
    iso: IsoCode.VG,
    fullName: 'British Virgin Islands',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('VI')
  usVirginIslands(
    capital: 'Charlotte Amalie',
    nativeName: 'United States Virgin Islands',
    flag: '🇻🇮',
    iso: IsoCode.VI,
    fullName: 'U.S. Virgin Islands',
    continent: Continent.NA,
    dialCode: DialCode(1),
    currency: Currency.USD,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('VN')
  vietnam(
    capital: 'Hanoi',
    nativeName: 'Việt Nam',
    flag: '🇻🇳',
    iso: IsoCode.VN,
    fullName: 'Vietnam',
    continent: Continent.AS,
    dialCode: DialCode(84),
    currency: Currency.VND,
    languages: <Language>[Language.VI],
  ),
  @JsonValue('VU')
  vanuatu(
    capital: 'Port Vila',
    nativeName: 'Vanuatu',
    flag: '🇻🇺',
    iso: IsoCode.VU,
    fullName: 'Vanuatu',
    continent: Continent.OC,
    dialCode: DialCode(678),
    currency: Currency.VUV,
    languages: <Language>[Language.BI, Language.EN, Language.FR],
  ),
  @JsonValue('WF')
  wallisAndFutuna(
    capital: 'Mata-Utu',
    nativeName: 'Wallis et Futuna',
    flag: '🇼🇫',
    iso: IsoCode.WF,
    fullName: 'Wallis and Futuna',
    continent: Continent.OC,
    dialCode: DialCode(681),
    currency: Currency.XPF,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('WS')
  samoa(
    capital: 'Apia',
    nativeName: 'Samoa',
    flag: '🇼🇸',
    iso: IsoCode.WS,
    fullName: 'Samoa',
    continent: Continent.OC,
    dialCode: DialCode(685),
    currency: Currency.WST,
    languages: <Language>[Language.SM, Language.EN],
  ),
  @JsonValue('XK')
  kosovo(
    capital: 'Pristina',
    nativeName: 'Republika e Kosovës',
    flag: '🇽🇰',
    iso: IsoCode.XK,
    fullName: 'Kosovo',
    continent: Continent.EU,
    dialCode: DialCode(383),
    currency: Currency.EUR,
    languages: <Language>[Language.SQ, Language.SR],
  ),
  @JsonValue('YE')
  yemen(
    capital: '''Sana'a''',
    nativeName: 'اليَمَن',
    flag: '🇾🇪',
    iso: IsoCode.YE,
    fullName: 'Yemen',
    continent: Continent.AS,
    dialCode: DialCode(967),
    currency: Currency.YER,
    languages: <Language>[Language.AR],
  ),
  @JsonValue('YT')
  mayotte(
    capital: 'Mamoudzou',
    nativeName: 'Mayotte',
    flag: '🇾🇹',
    iso: IsoCode.YT,
    fullName: 'Mayotte',
    continent: Continent.AF,
    dialCode: DialCode(262),
    currency: Currency.EUR,
    languages: <Language>[Language.FR],
  ),
  @JsonValue('ZA')
  southAfrica(
    capital: 'Pretoria',
    nativeName: 'South Africa',
    flag: '🇿🇦',
    iso: IsoCode.ZA,
    fullName: 'South Africa',
    continent: Continent.AF,
    dialCode: DialCode(27),
    currency: Currency.ZAR,
    languages: <Language>[
      Language.AF,
      Language.EN,
      Language.NR,
      Language.ST,
      Language.SS,
      Language.TN,
      Language.TS,
      Language.VE,
      Language.XH,
      Language.ZU,
    ],
  ),
  @JsonValue('ZM')
  zambia(
    capital: 'Lusaka',
    nativeName: 'Zambia',
    flag: '🇿🇲',
    iso: IsoCode.ZM,
    fullName: 'Zambia',
    continent: Continent.AF,
    dialCode: DialCode(260),
    currency: Currency.ZMW,
    languages: <Language>[Language.EN],
  ),
  @JsonValue('ZW')
  zimbabwe(
    capital: 'Harare',
    nativeName: 'Zimbabwe',
    flag: '🇿🇼',
    iso: IsoCode.ZW,
    fullName: 'Zimbabwe',
    continent: Continent.AF,
    dialCode: DialCode(263),
    currency: Currency.USD,
    languages: <Language>[Language.EN, Language.SN, Language.ND],
  );

  const Country({
    required this.iso,
    required this.capital,
    required this.flag,
    required this.fullName,
    required this.nativeName,
    required this.continent,
    required this.currency,
    required this.dialCode,
    required this.languages,
  });

  /// The ISO code of the country.
  final IsoCode iso;

  /// The capital city of the country.
  final String capital;

  /// The emoji flag representing the country.
  final String flag;

  /// The full English name of the country.
  final String fullName;

  /// The native name of the country.
  final String nativeName;

  /// The continent the country is located in.
  final Continent continent;

  /// The official languages spoken in the country.
  final List<Language> languages;

  /// The currency used in the country.
  final Currency currency;

  /// The international dialing code to call the country.
  final DialCode dialCode;

  /// Returns the country matching the provided name.
  static Country? byName(final dynamic name) => countryFromJson(name);

  /// Returns the country matching the provided full name.
  static Country? byFullName(final dynamic name) => countryFromJson(name);

  /// Returns the country matching the provided native name.
  static Country? byNativeName(final dynamic name) => countryFromJson(name);

  /// Returns the country matching the provided capital.
  static Country? byCapital(final dynamic capital) => countryFromJson(capital);

  /// Returns the country matching the provided flag emoji.
  static Country? byFlag(final dynamic flag) => countryFromJson(flag);

  /// Returns the country matching the provided ISO code.
  static Country? byIsoCode(final dynamic iso) => countryFromJson(iso);

  /// Returns the country matching the provided dial code.
  static Country? byDialCode(final dynamic dial) => countryFromJson(dial);
}

Iterable<String> get countryEnumValues => _$CountryEnumMap.values;
Map<Country, String> get countryEnumMap => _$CountryEnumMap;
String? countryToJson(final Country? country) => countryEnumMap[country];

Country? countryFromJson(final Object? country) {
  if (country is Country) {
    return country;
  }
  if (country is num) {
    return Country.values.elementAtOrNull(country.toInt());
  }
  if (country is int) {
    return Country.values.elementAtOrNull(country);
  }
  for (final Country c in Country.values) {
    if (country is IsoCode) {
      if (c.iso == country) {
        return c;
      }
    }
    if (country is String) {
      final String cl = country.toLowerCase();

      final bool isISO = c.iso.name.toLowerCase() == cl;
      final bool isCapital = c.capital.toLowerCase() == cl;
      final bool isFlag = c.flag.toLowerCase() == cl;
      final bool isFullName = c.fullName.toLowerCase() == cl;
      final bool isName = c.name.toLowerCase() == cl;
      final bool isNativeName = c.nativeName.toLowerCase() == cl;
      final bool isDialCode = c.dialCode.toString().toLowerCase() == cl;

      if (isISO ||
          isCapital ||
          isFlag ||
          isFullName ||
          isName ||
          isNativeName ||
          isDialCode) {
        return c;
      }
    }
    if (country is DialCode) {
      if (c.dialCode == country) {
        return c;
      }
    }
  }

  return null;
}
