import 'package:advertising_id/advertising_id.dart';
import 'package:core_logic/core_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/src/core/utils/icon_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => InitializationCubit()..initialize(),
      child: BlocListener<InitializationCubit, InitializationState>(
        listener: (context, state) {
          if (state is InitializedState) {
            context.go(state.startRoute);
          }
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: AppIcon(asset: IconProvider.splash.buildImageUrl(), width: double.infinity, fit: BoxFit.cover,),
            ),
            Positioned(
              top: height * 0.17,
              child: AppIcon(asset: IconProvider.logo.buildImageUrl(), width: 350, fit: BoxFit.fitWidth,),
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
        ),
      ),
    );
  }
}
