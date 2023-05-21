class WrongPasswordException implements Exception {
  const WrongPasswordException();

  @override
  String toString() => 'InvalidPasswordException';
}
