import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/icon_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {



  @override
  void initState() {
    super.initState();
    startLoading(context);

  }

  Future<void> startLoading(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    //
    // // final adId = await AdvertisingId.id(true);
    // // FirebaseMessaging instance = FirebaseMessaging.instance;
    // // final settings =
    // //     await instance.requestPermission(alert: true, badge: true, sound: true);
    // // if (settings.authorizationStatus != AuthorizationStatus.authorized) {
    // //   SharedPreferences.getInstance()
    // //       .then((prefs) => prefs.setBool('notificationsEnabled', false));
    // // }
    //
    context.go(RouteValue.home.path);
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        const DecoratedBox(
          decoration: BoxDecoration(color: Color(0xFF141414)),
          child: SizedBox.expand(),
        ),
        Positioned(
          top: height * 0.34,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                 
                  AppIcon(asset: IconProvider.splash.buildImageUrl()),
                ],
              ),
              
            ],
          ),
        ),
        Positioned(
          bottom: height * 0.11,
          child: Transform.scale(
            scale: 2.0,
            child: CupertinoActivityIndicator(color: Color(0xFFDF3E3E),),
          ),
        )
      ],
    );
  }
}
