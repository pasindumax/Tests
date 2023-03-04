import 'package:intl/intl.dart';

extension DoubleExtension on double {
  static final formatter = NumberFormat('#,##0.00', 'en_US');
  String toAmount() {
    try {
      return formatter.format(this);
    } on Exception catch (_) {
      return '0.00';
    }
  }
}
