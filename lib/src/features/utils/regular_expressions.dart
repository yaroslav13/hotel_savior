class RegularExpressions {
  RegularExpressions._();

  static final creditCard = RegExp(r'^(5[1-5][0-9]{2}([- ]?[0-9]{4}){3})$');
  static final onlyCharacters = RegExp('[a-zA-Z ]');
}
