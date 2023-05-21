import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';

const _dateFormat = 'dd/MM/yyyy';

@injectable
class DateFormatterUtils {

  /// Parses the given [date] to a [DateTime] object.
  /// Date format: dd/MM/yyyy
  /// Common application date format.
  DateTime parse(String date) => DateFormat(_dateFormat).parse(date);
}
