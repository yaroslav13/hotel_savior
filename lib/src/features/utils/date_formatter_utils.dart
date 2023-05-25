import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';

class DateFormats {
  DateFormats._();

  static const ddMMyyyy = 'dd/MM/yyyy';
  static const mMyyyy = 'MM/yyyy';
}

@injectable
class DateFormatterUtils {
  /// Parses the given [date] to a [DateTime] object.
  /// Date format: dd/MM/yyyy by default.
  /// Common application date format.
  DateTime parse(
    String date, {
    String format = DateFormats.ddMMyyyy,
  }) =>
      DateFormat(format).parse(date);
}
