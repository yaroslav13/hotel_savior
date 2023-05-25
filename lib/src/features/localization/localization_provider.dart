import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/common/monocolored_material_stub.dart';

const _sourcePath = 'assets/translations';
const _supportedLocales = [
  Locale('ua'),
  Locale('en'),
];

class LocalizationProvider extends StatelessWidget {
  const LocalizationProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => FutureBuilder<void>(
        // ignore: discarded_futures
        future: EasyLocalization.ensureInitialized(),
        builder: (_, snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? EasyLocalization(
                    supportedLocales: _supportedLocales,
                    path: _sourcePath,
                    fallbackLocale: _supportedLocales.last,
                    child: child,
                  )
                : const MonocoloredMaterialStub(),
      );
}
