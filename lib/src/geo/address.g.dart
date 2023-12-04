// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$AddressAutoequal on Address {
  @Deprecated(r'Use _$props instead')
  List<Object?> get _autoequalProps => _$props;
  List<Object?> get _$props => [
        name,
        street,
        coords,
        numbering,
        city,
        state,
        country,
        zipCode,
      ];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressCWProxy {
  Address coords(Coordinates coords);

  Address name(String name);

  Address city(String city);

  Address street(String street);

  Address numbering(String numbering);

  Address country(Country country);

  Address zipCode(int zipCode);

  Address state(String? state);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Address(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Address(...).copyWith(id: 12, name: "My name")
  /// ````
  Address call({
    Coordinates? coords,
    String? name,
    String? city,
    String? street,
    String? numbering,
    Country? country,
    int? zipCode,
    String? state,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddress.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddress.copyWith.fieldName(...)`
class _$AddressCWProxyImpl implements _$AddressCWProxy {
  const _$AddressCWProxyImpl(this._value);

  final Address _value;

  @override
  Address coords(Coordinates coords) => this(coords: coords);

  @override
  Address name(String name) => this(name: name);

  @override
  Address city(String city) => this(city: city);

  @override
  Address street(String street) => this(street: street);

  @override
  Address numbering(String numbering) => this(numbering: numbering);

  @override
  Address country(Country country) => this(country: country);

  @override
  Address zipCode(int zipCode) => this(zipCode: zipCode);

  @override
  Address state(String? state) => this(state: state);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Address(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Address(...).copyWith(id: 12, name: "My name")
  /// ````
  Address call({
    Object? coords = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? street = const $CopyWithPlaceholder(),
    Object? numbering = const $CopyWithPlaceholder(),
    Object? country = const $CopyWithPlaceholder(),
    Object? zipCode = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
  }) {
    return Address(
      coords: coords == const $CopyWithPlaceholder() || coords == null
          ? _value.coords
          // ignore: cast_nullable_to_non_nullable
          : coords as Coordinates,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      city: city == const $CopyWithPlaceholder() || city == null
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String,
      street: street == const $CopyWithPlaceholder() || street == null
          ? _value.street
          // ignore: cast_nullable_to_non_nullable
          : street as String,
      numbering: numbering == const $CopyWithPlaceholder() || numbering == null
          ? _value.numbering
          // ignore: cast_nullable_to_non_nullable
          : numbering as String,
      country: country == const $CopyWithPlaceholder() || country == null
          ? _value.country
          // ignore: cast_nullable_to_non_nullable
          : country as Country,
      zipCode: zipCode == const $CopyWithPlaceholder() || zipCode == null
          ? _value.zipCode
          // ignore: cast_nullable_to_non_nullable
          : zipCode as int,
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as String?,
    );
  }
}

extension $AddressCopyWith on Address {
  /// Returns a callable class that can be used as follows: `instanceOfAddress.copyWith(...)` or like so:`instanceOfAddress.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddressCWProxy get copyWith => _$AddressCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `Address(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Address(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  Address copyWithNull({
    bool state = false,
  }) {
    return Address(
      coords: coords,
      name: name,
      city: city,
      street: street,
      numbering: numbering,
      country: country,
      zipCode: zipCode,
      state: state == true ? null : this.state,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map json) => $checkedCreate(
      'Address',
      json,
      ($checkedConvert) {
        final val = Address(
          coords: $checkedConvert('coords',
              (v) => Coordinates.fromJson(Map<String, dynamic>.from(v as Map))),
          name: $checkedConvert('name', (v) => v as String),
          city: $checkedConvert('city', (v) => v as String),
          street: $checkedConvert('street', (v) => v as String),
          numbering: $checkedConvert('numbering', (v) => v as String),
          country: $checkedConvert(
              'country', (v) => $enumDecode(_$CountryEnumMap, v)),
          zipCode: $checkedConvert('zipCode', (v) => v as int),
          state: $checkedConvert('state', (v) => v as String?),
        );
        return val;
      },
    );

const _$AddressFieldMap = <String, String>{
  'name': 'name',
  'street': 'street',
  'coords': 'coords',
  'numbering': 'numbering',
  'city': 'city',
  'state': 'state',
  'country': 'country',
  'zipCode': 'zipCode',
};

// ignore: unused_element
abstract class _$AddressPerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? street(String instance) => instance;
  // ignore: unused_element
  static Object? coords(Coordinates instance) => instance.toJson();
  // ignore: unused_element
  static Object? numbering(String instance) => instance;
  // ignore: unused_element
  static Object? city(String instance) => instance;
  // ignore: unused_element
  static Object? state(String? instance) => instance;
  // ignore: unused_element
  static Object? country(Country instance) => _$CountryEnumMap[instance]!;
  // ignore: unused_element
  static Object? zipCode(int instance) => instance;
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'name': instance.name,
      'street': instance.street,
      'coords': instance.coords.toJson(),
      'numbering': instance.numbering,
      'city': instance.city,
      'state': instance.state,
      'country': _$CountryEnumMap[instance.country]!,
      'zipCode': instance.zipCode,
    };

const _$CountryEnumMap = {
  Country.ascensionIsland: 'Ascension Island',
  Country.andorra: 'Andorra',
  Country.unitedArabEmirates: 'United Arab Emirates',
  Country.afghanistan: 'Afghanistan',
  Country.antiguaAndBarbuda: 'Antigua and Barbuda',
  Country.anguilla: 'Anguilla',
  Country.albania: 'Albania',
  Country.armenia: 'Armenia',
  Country.angola: 'Angola',
  Country.argentina: 'Argentina',
  Country.americanSamoa: 'American Samoa',
  Country.austria: 'Austria',
  Country.australia: 'Australia',
  Country.aruba: 'Aruba',
  Country.aland: 'Åland',
  Country.azerbaijan: 'Azerbaijan',
  Country.bosniaAndHerzegovina: 'Bosnia and Herzegovina',
  Country.barbados: 'Barbados',
  Country.bangladesh: 'Bangladesh',
  Country.belgium: 'Belgium',
  Country.burkinaFaso: 'Burkina Faso',
  Country.bulgaria: 'Bulgaria',
  Country.bahrain: 'Bahrain',
  Country.burundi: 'Burundi',
  Country.benin: 'Benin',
  Country.saintBarthelemy: 'Saint Barthélemy',
  Country.bermuda: 'Bermuda',
  Country.brunei: 'Brunei',
  Country.bolivia: 'Bolivia',
  Country.bonaire: 'Bonaire',
  Country.brazil: 'Brazil',
  Country.bahamas: 'Bahamas',
  Country.bhutan: 'Bhutan',
  Country.botswana: 'Botswana',
  Country.belarus: 'Belarus',
  Country.belize: 'Belize',
  Country.canada: 'Canada',
  Country.cocosKeelingIslands: 'Cocos [Keeling] Islands',
  Country.democraticRepublicOfTheCongo: 'Democratic Republic of the Congo',
  Country.centralAfricanRepublic: 'Central African Republic',
  Country.republicOfTheCongo: 'Republic of the Congo',
  Country.switzerland: 'Switzerland',
  Country.ivoryCoast: 'Ivory Coast',
  Country.cookIslands: 'Cook Islands',
  Country.chile: 'Chile',
  Country.cameroon: 'Cameroon',
  Country.china: 'China',
  Country.colombia: 'Colombia',
  Country.costaRica: 'Costa Rica',
  Country.cuba: 'Cuba',
  Country.capeVerde: 'Cape Verde',
  Country.curacao: 'Curacao',
  Country.christmasIsland: 'Christmas Island',
  Country.cyprus: 'Cyprus',
  Country.czechRepublic: 'Czech Republic',
  Country.germany: 'Germany',
  Country.djibouti: 'Djibouti',
  Country.denmark: 'Denmark',
  Country.dominica: 'Dominica',
  Country.dominicanRepublic: 'Dominican Republic',
  Country.algeria: 'Algeria',
  Country.ecuador: 'Ecuador',
  Country.estonia: 'Estonia',
  Country.egypt: 'Egypt',
  Country.westernSahara: 'Western Sahara',
  Country.eritrea: 'Eritrea',
  Country.spain: 'Spain',
  Country.ethiopia: 'Ethiopia',
  Country.finland: 'Finland',
  Country.fiji: 'Fiji',
  Country.falklandIslands: 'Falkland Islands',
  Country.micronesia: 'Micronesia',
  Country.faroeIslands: 'Faroe Islands',
  Country.france: 'France',
  Country.gabon: 'Gabon',
  Country.unitedKingdom: 'United Kingdom',
  Country.grenada: 'Grenada',
  Country.georgia: 'Georgia',
  Country.frenchGuiana: 'French Guiana',
  Country.guernsey: 'Guernsey',
  Country.ghana: 'Ghana',
  Country.gibraltar: 'Gibraltar',
  Country.greenland: 'Greenland',
  Country.gambia: 'Gambia',
  Country.guinea: 'Guinea',
  Country.guadeloupe: 'Guadeloupe',
  Country.equatorialGuinea: 'Equatorial Guinea',
  Country.greece: 'Greece',
  Country.guatemala: 'Guatemala',
  Country.guam: 'Guam',
  Country.guineaBissau: 'Guinea-Bissau',
  Country.guyana: 'Guyana',
  Country.hongKong: 'Hong Kong',
  Country.honduras: 'Honduras',
  Country.croatia: 'Croatia',
  Country.haiti: 'Haiti',
  Country.hungary: 'Hungary',
  Country.indonesia: 'Indonesia',
  Country.ireland: 'Ireland',
  Country.israel: 'Israel',
  Country.isleOfMan: 'Isle of Man',
  Country.india: 'India',
  Country.britishIndianOceanTerritory: 'British Indian Ocean Territory',
  Country.iraq: 'Iraq',
  Country.iran: 'Iran',
  Country.iceland: 'Iceland',
  Country.italy: 'Italy',
  Country.jersey: 'Jersey',
  Country.jamaica: 'Jamaica',
  Country.jordan: 'Jordan',
  Country.japan: 'Japan',
  Country.kenya: 'Kenya',
  Country.kyrgyzstan: 'Kyrgyzstan',
  Country.cambodia: 'Cambodia',
  Country.kiribati: 'Kiribati',
  Country.comoros: 'Comoros',
  Country.saintKittsAndNevis: 'Saint Kitts and Nevis',
  Country.northKorea: 'North Korea',
  Country.southKorea: 'South Korea',
  Country.kuwait: 'Kuwait',
  Country.caymanIslands: 'Cayman Islands',
  Country.kazakhstan: 'Kazakhstan',
  Country.laos: 'Laos',
  Country.lebanon: 'Lebanon',
  Country.saintLucia: 'Saint Lucia',
  Country.liechtenstein: 'Liechtenstein',
  Country.sriLanka: 'Sri Lanka',
  Country.liberia: 'Liberia',
  Country.lesotho: 'Lesotho',
  Country.lithuania: 'Lithuania',
  Country.luxembourg: 'Luxembourg',
  Country.latvia: 'Latvia',
  Country.libya: 'Libya',
  Country.morocco: 'Morocco',
  Country.monaco: 'Monaco',
  Country.moldova: 'Moldova',
  Country.montenegro: 'Montenegro',
  Country.saintMartin: 'Saint Martin',
  Country.madagascar: 'Madagascar',
  Country.marshallIslands: 'Marshall Islands',
  Country.northMacedonia: 'North Macedonia',
  Country.mali: 'Mali',
  Country.myanmarBurma: 'Myanmar [Burma]',
  Country.mongolia: 'Mongolia',
  Country.macao: 'Macao',
  Country.northernMarianaIslands: 'Northern Mariana Islands',
  Country.martinique: 'Martinique',
  Country.mauritania: 'Mauritania',
  Country.montserrat: 'Montserrat',
  Country.malta: 'Malta',
  Country.mauritius: 'Mauritius',
  Country.maldives: 'Maldives',
  Country.malawi: 'Malawi',
  Country.mexico: 'Mexico',
  Country.malaysia: 'Malaysia',
  Country.mozambique: 'Mozambique',
  Country.namibia: 'Namibia',
  Country.newCaledonia: 'New Caledonia',
  Country.niger: 'Niger',
  Country.norfolkIsland: 'Norfolk Island',
  Country.nigeria: 'Nigeria',
  Country.nicaragua: 'Nicaragua',
  Country.netherlands: 'Netherlands',
  Country.norway: 'Norway',
  Country.nepal: 'Nepal',
  Country.nauru: 'Nauru',
  Country.niue: 'Niue',
  Country.newZealand: 'New Zealand',
  Country.oman: 'Oman',
  Country.panama: 'Panama',
  Country.peru: 'Peru',
  Country.frenchPolynesia: 'French Polynesia',
  Country.papuaNewGuinea: 'Papua New Guinea',
  Country.philippines: 'Philippines',
  Country.pakistan: 'Pakistan',
  Country.poland: 'Poland',
  Country.saintPierreAndMiquelon: 'Saint Pierre and Miquelon',
  Country.puertoRico: 'Puerto Rico',
  Country.palestine: 'Palestine',
  Country.portugal: 'Portugal',
  Country.palau: 'Palau',
  Country.paraguay: 'Paraguay',
  Country.qatar: 'Qatar',
  Country.reunion: 'Réunion',
  Country.romania: 'Romania',
  Country.serbia: 'Serbia',
  Country.russia: 'Russia',
  Country.rwanda: 'Rwanda',
  Country.saudiArabia: 'Saudi Arabia',
  Country.solomonIslands: 'Solomon Islands',
  Country.seychelles: 'Seychelles',
  Country.sudan: 'Sudan',
  Country.sweden: 'Sweden',
  Country.singapore: 'Singapore',
  Country.saintHelena: 'Saint Helena',
  Country.slovenia: 'Slovenia',
  Country.svalbardAndJanMayen: 'Svalbard and Jan Mayen',
  Country.slovakia: 'Slovakia',
  Country.sierraLeone: 'Sierra Leone',
  Country.sanMarino: 'San Marino',
  Country.senegal: 'Senegal',
  Country.somalia: 'Somalia',
  Country.suriname: 'Suriname',
  Country.southSudan: 'South Sudan',
  Country.saoTomeAndPrincipe: 'São Tomé and Príncipe',
  Country.elSalvador: 'El Salvador',
  Country.sintMaarten: 'Sint Maarten',
  Country.syria: 'Syria',
  Country.swaziland: 'Swaziland',
  Country.tristanDaCunha: 'Tristan da Cunha',
  Country.turksAndCaicosIslands: 'Turks and Caicos Islands',
  Country.turkey: 'Turkey',
  Country.chad: 'Chad',
  Country.togo: 'Togo',
  Country.thailand: 'Thailand',
  Country.tajikistan: 'Tajikistan',
  Country.tokelau: 'Tokelau',
  Country.eastTimor: 'East Timor',
  Country.turkmenistan: 'Turkmenistan',
  Country.tunisia: 'Tunisia',
  Country.tonga: 'Tonga',
  Country.trinidadAndTobago: 'Trinidad and Tobago',
  Country.tuvalu: 'Tuvalu',
  Country.taiwan: 'Taiwan',
  Country.tanzania: 'Tanzania',
  Country.ukraine: 'Ukraine',
  Country.uganda: 'Uganda',
  Country.unitedStates: 'United States',
  Country.uruguay: 'Uruguay',
  Country.uzbekistan: 'Uzbekistan',
  Country.vaticanCity: 'Vatican City',
  Country.saintVincentAndTheGrenadines: 'Saint Vincent and the Grenadines',
  Country.venezuela: 'Venezuela',
  Country.britishVirginIslands: 'British Virgin Islands',
  Country.usVirginIslands: 'U.S. Virgin Islands',
  Country.vietnam: 'Vietnam',
  Country.vanuatu: 'Vanuatu',
  Country.wallisAndFutuna: 'Wallis and Futuna',
  Country.samoa: 'Samoa',
  Country.kosovo: 'Kosovo',
  Country.yemen: 'Yemen',
  Country.mayotte: 'Mayotte',
  Country.southAfrica: 'South Africa',
  Country.zambia: 'Zambia',
  Country.zimbabwe: 'Zimbabwe',
};
