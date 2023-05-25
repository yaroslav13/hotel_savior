import 'package:flutter/material.dart';

@immutable
class CategoryItem {
  const CategoryItem({
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  final String title;
  final String imagePath;
  final VoidCallback? onTap;
}
