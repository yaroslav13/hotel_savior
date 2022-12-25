enum AppRoutes {
  splash(path: '/', designation: 'splash');

  const AppRoutes({
    required this.path,
    required this.designation,
  });

  final String path;
  final String designation;
}
