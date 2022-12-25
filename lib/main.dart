import 'package:flutter/material.dart';
import 'package:hotel_savior/features/application.dart';
import 'package:hotel_savior/features/dependencies/dependencies_provider.dart';

void main() {
  runApp(_buildAppWidgetTree());
}

Widget _buildAppWidgetTree() => const DependenciesProvider(
      child: Application(),
    );
