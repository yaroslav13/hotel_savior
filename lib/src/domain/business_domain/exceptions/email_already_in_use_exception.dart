class EmailAlreadyInUseException implements Exception {
  const EmailAlreadyInUseException();

  @override
  String toString() => 'EmailAlreadyInUseException';
}
