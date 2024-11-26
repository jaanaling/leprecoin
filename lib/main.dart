import 'dart:async';

import 'package:core_logic/core_logic.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/dependency_injection.dart';
import 'package:leprecoin/src/feature/app/presentation/app_root.dart';
import 'package:core_amplitude/core_amplitude.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:leprecoin/firebase_options.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (FlutterErrorDetails details) {
      _handleFlutterError(details);
    };

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await EasyLocalization.ensureInitialized();
    setupDependencyInjection();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await InitializationUtil.coreInit(
      domain: 'leprecoina.com',
      amplitudeKey: 'c5ed46201898bd31ff92603db128cb0',
      appId: 'com.evosphere.leppyfinance',
      iosAppId: '6738483812',
      initialRoute: RouteValue.home.path,
    );

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
  }, (Object error, StackTrace stackTrace) {
    _handleAsyncError(error, stackTrace);
  });
}

void _handleFlutterError(FlutterErrorDetails details) {
  AmplitudeUtil.logFailure(
    details.exception is Exception ? Failure.exception : Failure.error,
    details.exception.toString(),
    details.stack,
  );
}

void _handleAsyncError(Object error, StackTrace stackTrace) {
  AmplitudeUtil.logFailure(
    error is Exception ? Failure.exception : Failure.error,
    error.toString(),
    stackTrace,
  );
}
