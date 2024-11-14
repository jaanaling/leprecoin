import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/src/core/utils/icon_provider.dart';

import '../../routes/route_value.dart';
import '../../src/core/utils/app_icon.dart';

class BottomBar extends StatefulWidget {
  final void Function(int) onTap;
  const BottomBar({super.key, required this.onTap});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                IconProvider.bottom.buildImageUrl(),
              ),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconButton(
                    index: 0,
                    iconUrl: IconProvider.home.buildImageUrl(),
                    iconAUrl: IconProvider.homeActive.buildImageUrl(),
                    onPressed: () {
                      context.go(RouteValue.home.path);
                      _onItemTapped(0);
                    },
                  ),
                  _buildIconButton(
                    index: 1,
                    iconUrl: IconProvider.goal.buildImageUrl(),
                    iconAUrl: IconProvider.goalActive.buildImageUrl(),
                    onPressed: () {
                      context.go(RouteValue.goals.path);
                      _onItemTapped(1);
                    },
                  ),
                  _buildIconButton(
                    index: 2,
                    iconUrl: IconProvider.chel.buildImageUrl(),
                    iconAUrl: IconProvider.chelActive.buildImageUrl(),
                    onPressed: () {
                      context.go(RouteValue.chellenge.path);
                      _onItemTapped(2);
                    },
                  ),
                  _buildIconButton(
                    index: 3,
                    iconUrl: IconProvider.tips.buildImageUrl(),
                    iconAUrl: IconProvider.tipsActive.buildImageUrl(),
                    onPressed: () {
                      context.go(RouteValue.tips.path);
                      _onItemTapped(3);
                    },
                  ),
                  _buildIconButton(
                    index: 4,
                    iconUrl: IconProvider.trans.buildImageUrl(),
                    iconAUrl: IconProvider.transActive.buildImageUrl(),
                    onPressed: () {
                      context.go(RouteValue.transaction.path);
                      _onItemTapped(4);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.onTap(index);
  }

  Widget _buildIconButton({
    required int index,
    required String iconUrl,
    required String iconAUrl,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.17,
      child: IconButton(
          onPressed: onPressed,
          icon: AppIcon(
            asset: index == _currentIndex ? iconAUrl : iconUrl,
          )),
    );
  }
}
