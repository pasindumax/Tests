extension StringExtension on String {
  bool isNumber() {
    try {
      double.parse(this);
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
