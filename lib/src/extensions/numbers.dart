import 'dart:math';

import 'package:intl/intl.dart';

import '../geo/currency.dart';

enum NumberFormatType {
  decimal,
  percent,
  scientific,
  compact,
  compactLong,
  custom,
}

enum DecimalType {
  automatic,
  periodDecimal,
  commaDecimal,
}

/// Rounds a double to a specified precision.
///
/// ```dart
/// 3.1415.roundToPrecision(2); // Returns 3.14
/// ```
extension Precision on double {
  /// Rounds a double to a specified precision.
  ///
  /// The [precision] parameter specifies the number of digits after the decimal
  /// point.
  ///
  /// Returns the rounded double.
  double roundToPrecision(final int precision) {
    final double mod = pow(10, precision.toDouble()).toDouble();
    return (this * mod).round().toDouble() / mod;
  }
}

/// Formats a number to a string based on the given format type and options.
extension Format on num {
  /// Formats a number to a string based on the given format type and options.
  ///
  /// The [formatType] parameter specifies the format to use. It can be:
  /// - [NumberFormatType.decimal] for a decimal format. The [decimalType]
  ///   parameter specifies the decimal separator.
  /// - [NumberFormatType.percent] for a percent format.
  /// - [NumberFormatType.scientific] for a scientific format.
  /// - [NumberFormatType.compact] for a compact format.
  /// - [NumberFormatType.compactLong] for a longer compact format.
  /// - [NumberFormatType.custom] to use a custom [NumberFormat].
  ///
  /// The [decimalType] parameter specifies the decimal separator to use for
  /// [NumberFormatType.decimal]. It can be:
  /// - [DecimalType.automatic] to choose automatically based on the locale.
  /// - [DecimalType.periodDecimal] to use a period (.) as the decimal
  ///   separator.
  /// - [DecimalType.commaDecimal] to use a comma (,) as the decimal separator.
  ///
  /// The [currency] parameter specifies a currency to format the number with.
  ///
  /// The [format] parameter specifies a custom [NumberFormat] to use for
  /// [NumberFormatType.custom].
  ///
  /// Returns the formatted string.
  String formatNumber({
    final NumberFormatType formatType = NumberFormatType.decimal,
    final DecimalType decimalType = DecimalType.automatic,
    final Currency? currency,
    final NumberFormat? format,
  }) {
    final String formattedValue = switch (formatType) {
      NumberFormatType.decimal => switch (decimalType) {
          DecimalType.automatic => NumberFormat.decimalPattern(),
          DecimalType.periodDecimal => NumberFormat.decimalPattern('en_US'),
          DecimalType.commaDecimal => NumberFormat.decimalPattern('es_PA'),
        },
      NumberFormatType.percent => NumberFormat.percentPattern(),
      NumberFormatType.scientific => NumberFormat.scientificPattern(),
      NumberFormatType.compact => NumberFormat.compact(),
      NumberFormatType.compactLong => NumberFormat.compactLong(),
      NumberFormatType.custom => format ?? NumberFormat(),
    }
        .format(this);

    if (currency != null) {
      return currency.format(formattedValue);
    }

    return formattedValue;
  }
}
