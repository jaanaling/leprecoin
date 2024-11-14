import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/core/dependency_injection.dart';
import 'src/feature/app/presentation/app_root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await EasyLocalization.ensureInitialized();
  setupDependencyInjection();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('de'),
          Locale('es'),
          Locale('fr'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const AppRoot()),
  );
}
