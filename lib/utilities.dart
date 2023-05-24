library utilities;

import 'package:utilities/geo.dart';
import 'package:utilities/utils.dart';

export 'extensions.dart';
export 'geo.dart';
export 'routing.dart';
export 'utils.dart';
export 'widgets.dart';

void ensureInitialized() {
  Serializable.register<Currency>(() => Currency.AED);
  Serializable.register<Language>(() => Language.AF);
  Serializable.register<DialCode>(() => const DialCode(0));
  Serializable.register<Continent>(() => Continent.AF);
  Serializable.register<Country>(() => Country.afghanistan);
  Serializable.register<IsoCode>(() => IsoCode.AC);
  Serializable.register<Coordinates>(() => const Coordinates(0, 0));
  Serializable.register<Address>(Address.new);
}
