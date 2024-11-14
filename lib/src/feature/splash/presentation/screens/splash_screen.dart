import 'package:flutter/cupertino.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/src/core/utils/icon_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
        Positioned.fill(
          child: AppIcon(asset: IconProvider.splash.buildImageUrl(), width: double.infinity, fit: BoxFit.cover,),
        ),
        Positioned(
          top: height * 0.17,
          child: AppIcon(asset: IconProvider.logo.buildImageUrl()),
        ),
        Positioned(
          bottom: height * 0.13,
          child: LoadingAnimationWidget.discreteCircle(
            color: Color(0xFF00FF11),
            secondRingColor: Color(0x9900FF11),
            thirdRingColor: Color(0x6600FF11),
            size: 70,
          ),
        ),
      ],
    );
  }
}
