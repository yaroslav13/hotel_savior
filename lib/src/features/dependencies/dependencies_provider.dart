import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_savior/src/di/get_it_service_impl.dart';
import 'package:hotel_savior/src/features/common/monocolored_material_stub.dart';
import 'package:provider/provider.dart';

class DependenciesProvider extends StatefulWidget {
  const DependenciesProvider({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  State<DependenciesProvider> createState() => _DependenciesProviderState();
}

class _DependenciesProviderState extends State<DependenciesProvider> {
  final _dependenciesReadinessNotifier = ValueNotifier<bool>(false);
  GetItServiceImpl? _getItService;

  Future<void> _initializeDependencies() async {
    _getItService ??= await GetItServiceImpl.instance;

    _dependenciesReadinessNotifier.value = true;
  }

  @override
  void initState() {
    super.initState();
    unawaited(_initializeDependencies());
  }

  @override
  void dispose() {
    _dependenciesReadinessNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<bool>(
        valueListenable: _dependenciesReadinessNotifier,
        builder: (_, isReady, child) =>
            //ignore:avoid-non-null-assertion
            isReady ? child! :  const MonocoloredMaterialStub(),
        child: Provider<GetIt>(
          create: (context) =>
              //ignore:avoid-non-null-assertion
              _getItService!.injection,
          child: widget.child,
        ),
      );
}
