class UserNotFoundException implements Exception {
  const UserNotFoundException();

  @override
  String toString() => 'UserNotFoundException';
}
