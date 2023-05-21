import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_savior/src/di/get_it_service.dart';
import 'package:hotel_savior/src/di/get_it_service_impl.dart';
import 'package:hotel_savior/src/features/common/monocolored_material_stub.dart';
import 'package:provider/provider.dart';

class DependenciesProvider extends StatelessWidget {
  const DependenciesProvider({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) => FutureBuilder<GetItService>(
        future: GetItServiceImpl.instance,
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? Provider<GetIt>(
                    create: (context) =>
                        //ignore:avoid-non-null-assertion
                        snapshot.data!.injection,
                    child: child,
                  )
                : const MonocoloredMaterialStub(),
      );
}
