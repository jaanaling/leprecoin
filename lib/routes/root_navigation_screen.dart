import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootNavigationScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const RootNavigationScreen({
    super.key,
    required this.navigationShell,
  });

  @override
  State<RootNavigationScreen> createState() => _RootNavigationScreenState();
}

class _RootNavigationScreenState extends State<RootNavigationScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CupertinoColors.white,
      child: Stack(
        children: [
          Positioned(
            bottom: -(height * 0.15),
            right: -(width * 0.227),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Color(0xFFB6CAFF),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: height * 0.43625,
                height: height * 0.43625,
              ),
            ),
          ),
          if (currentIndex != 1)
            Positioned(
              top: -(height * 0.085),
              left: -(width * 0.25),
              child: Opacity(
                opacity: 0.54,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFB6CA),
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(
                    width: height * 0.43625,
                    height: height * 0.43625,
                  ),
                ),
              ),
            ),
          widget.navigationShell,
        
        ],
      ),
    );
  }

  void _onTap(int index) {
    int cIndex = 0;

    switch (index) {
      case 0:
        cIndex = 1;
      case 1:
        cIndex = 0;
      case 2:
        cIndex = 2;
      case 3:
        cIndex = 3;
      default:
    }

    widget.navigationShell.goBranch(
      cIndex,
      initialLocation: true,
    );

    setState(() {
      currentIndex = index;
    });
  }
}
