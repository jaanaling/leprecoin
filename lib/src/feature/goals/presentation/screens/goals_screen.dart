import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:leprecoin/src/core/utils/icon_provider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../ui_kit/app_button/app_button.dart';
import '../../bloc/goals_bloc.dart';
import '../../model/goals.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  SharedPreferences? pref;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getShered();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> getShered() async {
    pref = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    final bool isIpad = MediaQuery.of(context).size.shortestSide >= 600;
    return BlocBuilder<GoalsBloc, GoalsState>(
      builder: (context, state) {
        if (state is GoalsLoaded) {
          final list = state.goals;
          double totalFinalSum = 0;
          double totalNowSum = 0;

          for (var goal in state.goals) {
            totalFinalSum += goal.finalsum;
            totalNowSum += goal.nowsum;
          }

          double overallCompletionPercentage = (totalNowSum / totalFinalSum);
          print(overallCompletionPercentage);
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 35, 16, 455),
                child: SafeArea(
                  child: Column(
                    children: [
                      if (list.isEmpty)
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            'No goals here!',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'avenir',
                            ),
                          ).tr(),
                        )
                      else
                        ListView.separated(
                          itemCount: list.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) => const Gap(16),
                          itemBuilder: (context, index) => Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(9, 0, 9, 13),
                                child: AppButton(
                                  onPressed: () {
                                    double nowsum = list[index].nowsum;
                                    double finalsum = list[index].finalsum;
                                    double progress = nowsum / finalsum;
                                    double balance =
                                        pref?.getDouble("balance") ?? 0;

                                    showCupertinoDialog(
                                      context: context,
                                      builder: (BuildContext childContext) {
                                        double localNowSum = nowsum;
                                        double localbalance = balance;
                                        return StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setState) {
                                            return SizedBox(
                                              child: CupertinoAlertDialog(
                                                title: const Text(
                                                  "CHANGE GOAL STATUS",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontFamily: 'avenir',
                                                    fontWeight: FontWeight.bold,
                                                    height: 0,
                                                  ),
                                                ).tr(),
                                                content: SizedBox(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Column(
                                                    children: [
                                                      const Gap(17),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "${"Balance:".tr()} ${localbalance.toStringAsFixed(2)}${pref?.getString("Currency") ?? "\$"}",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'avenir',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${"Final sum:".tr()} $finalsum${pref?.getString("Currency") ?? "\$"}",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'avenir',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${"Current sum:".tr()} ${localNowSum.toStringAsFixed(2)}${pref?.getString("Currency") ?? "\$"}",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'avenir',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const Gap(17),
                                                      Text(
                                                        "${"Goal Progress:".tr()} ${(localNowSum / finalsum * 100).toStringAsFixed(2)}%",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'avenir',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      const Gap(17),
                                                      CupertinoSlider(
                                                        max: finalsum,
                                                        value: localNowSum,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            localNowSum = value;
                                                            localbalance = balance +
                                                                (nowsum -
                                                                    localNowSum);
                                                          });
                                                        },
                                                        activeColor:
                                                            Color(0xFF8800FF),
                                                        thumbColor:
                                                            Color(0xFF8800FF),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                actions: [
                                                  CupertinoDialogAction(
                                                    onPressed: () {
                                                      Navigator.of(childContext)
                                                          .pop();
                                                    },
                                                    child: const Text(
                                                      "cancel",
                                                      style: TextStyle(
                                                        color: CupertinoColors
                                                            .destructiveRed,
                                                        fontSize: 18,
                                                        fontFamily: 'avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height: 0,
                                                      ),
                                                    ).tr(),
                                                  ),
                                                  CupertinoDialogAction(
                                                    onPressed: () {
                                                      context.read<GoalsBloc>()
                                                        ..add(UpdateGoals(
                                                            list[index].copyWith(
                                                                nowsum:
                                                                    localNowSum),
                                                            nowsum -
                                                                localNowSum));
                                                      Navigator.of(childContext)
                                                          .pop();
                                                    },
                                                    child: const Text(
                                                      "Add",
                                                      style: TextStyle(
                                                        color: CupertinoColors
                                                            .activeBlue,
                                                        fontSize: 18,
                                                        fontFamily: 'avenir',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height: 0,
                                                      ),
                                                    ).tr(),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  color: ButtonColors.yellow,
                                  widget: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      11,
                                      18,
                                      11,
                                      23,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list[index].text,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21,
                                            fontFamily: 'avenir',
                                          ),
                                        ),
                                        const Gap(8),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            '${pref?.getString("Currency") ?? "\$"}${list[index].nowsum.toStringAsFixed(2)}/${pref?.getString("Currency") ?? "\$"}${list[index].finalsum.toStringAsFixed(2)}',
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        const Gap(4),
                                        LinearPercentIndicator(
                                          padding: EdgeInsets.zero,
                                          lineHeight: 6,
                                          percent: list[index].nowsum /
                                              list[index].finalsum,
                                          barRadius: const Radius.circular(15),
                                          backgroundColor:
                                              const Color(0xFF303030),
                                          progressColor:
                                              const Color(0xFF8800FF),
                                        ),
                                      ],
                                    ),
                                  ),
                                  radius: 17,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: AppIcon(
                  asset: IconProvider.backLight.buildImageUrl(),
                  width: MediaQuery.of(context).size.width,
                  height: isIpad ? 600 : null,
                  fit: isIpad ? BoxFit.fill : BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: 55,
                left: isIpad? 400: 121,
                child: Transform.rotate(
                  angle: 13,
                  child: AppIcon(
                    width: isIpad?400: 218,
                    fit: BoxFit.fitWidth,
                    asset: overallCompletionPercentage >= 0.8
                        ? IconProvider.pot5.buildImageUrl()
                        : overallCompletionPercentage >= 0.6
                            ? IconProvider.pot4.buildImageUrl()
                            : overallCompletionPercentage >= 0.4
                                ? IconProvider.pot3.buildImageUrl()
                                : overallCompletionPercentage >= 0.2
                                    ? IconProvider.pot2.buildImageUrl()
                                    : IconProvider.pot1.buildImageUrl(),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: -39,
                child: AppIcon(
                  height: isIpad?600: 337,
                  asset: overallCompletionPercentage > 0.2
                      ? IconProvider.lepr0.buildImageUrl()
                      : IconProvider.lepr1.buildImageUrl(),
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.15,
                right: MediaQuery.of(context).size.width * 0.05,
                child: AppButton(
                  color: ButtonColors.purple,
                  onPressed: () {
                    final TextEditingController _goalNameController =
                        TextEditingController();
                    final TextEditingController _goalSumController =
                        TextEditingController();
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext childContext) {
                        return CupertinoAlertDialog(
                          title: const Text(
                            "NEW GOAL",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.bold,
                            ),
                          ).tr(),
                          content: Column(
                            children: [
                              const Gap(17),
                              const Text(
                                'GOAL NAME',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'avenir',
                                  fontWeight: FontWeight.w500,
                                ),
                              ).tr(),
                              const Gap(17),
                              CupertinoTextField(
                                controller: _goalNameController,
                                placeholder: "Enter goal name".tr(),
                                textAlignVertical: TextAlignVertical.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  fontFamily: 'avenir',
                                ),
                              ),
                              const Gap(17),
                              const Text(
                                'GOAL AMOUNT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'avenir',
                                  fontWeight: FontWeight.w500,
                                ),
                              ).tr(),
                              const Gap(17),
                              CupertinoTextField(
                                controller: _goalSumController,
                                placeholder: "Enter goal amount".tr(),
                                keyboardType: TextInputType.number,
                                textAlignVertical: TextAlignVertical.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  fontFamily: 'avenir',
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.of(childContext).pop();
                              },
                              child: const Text(
                                "cancel",
                                style: TextStyle(
                                  color: CupertinoColors.destructiveRed,
                                  fontSize: 18,
                                  fontFamily: 'avenir',
                                  fontWeight: FontWeight.bold,
                                ),
                              ).tr(),
                            ),
                            CupertinoDialogAction(
                              onPressed: () {
                                context.read<GoalsBloc>()
                                  ..add(SaveGoals(Goals(
                                      id: list.isEmpty ? 0 : list.last.id + 1,
                                      text: _goalNameController.text,
                                      finalsum:
                                          double.parse(_goalSumController.text),
                                      nowsum: 0)));
                                Navigator.of(childContext).pop();
                              },
                              child: const Text(
                                "Add",
                                style: TextStyle(
                                  color: CupertinoColors.activeBlue,
                                  fontSize: 18,
                                  fontFamily: 'avenir',
                                  fontWeight: FontWeight.bold,
                                ),
                              ).tr(),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  widget: Padding(
                    padding: EdgeInsets.only(
                      top: 6,
                      bottom: 12,
                      left: 22,
                      right: 22,
                    ),
                    child: Text(
                      '+ add new goal',
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ).tr(),
                  ),
                ),
                width: 195,
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
