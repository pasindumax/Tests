class CurrencyHelper{

  String trimCommaOfString(String string) {
    if(string.contains(',')){
      return string.replaceAll(',','');}
    else {
      return string;
    }
  }
}