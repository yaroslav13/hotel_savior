
/* 
Better way to define this validation is place it in interactor 
to avoid global constants
but it will make ui more complicated, so this solution is simplification
depends on Flutter features
*/ 
class AuthRules {
  AuthRules._();

  static const minPasswordLength = 8;
  static const minimalAge = 18;
}