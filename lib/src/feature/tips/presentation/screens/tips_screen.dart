import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:leprecoin/src/feature/tips/bloc/tips_bloc.dart';
import 'package:leprecoin/ui_kit/app_button/app_button.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({super.key});

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(14, 26, 14, 140),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppButton(
                    color:isFavorite? ButtonColors.purple:ButtonColors.white,
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "all",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isFavorite ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 0,
                          fontFamily: 'satoshi',
                        ),
                      ).tr(),
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = false;
                      });
                    },
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  const Gap(16),
                  AppButton(
                    color:!isFavorite? ButtonColors.purple:ButtonColors.white,
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "favorites",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: !isFavorite ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 0,
                          fontFamily: 'satoshi',
                        ),
                      ).tr(),
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = true;
                      });
                    },
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ),
            const Gap(43),
            BlocBuilder<TipsBloc, TipsState>(
              builder: (context, state) {
                if (state is TipsError) {
                  return Text(state.message);
                }
                if (state is TipsLoaded) {
                  final list = state.tips
                      .where(
                        (element) => !isFavorite
                            ? true
                            : element.isFavorite == isFavorite ,
                      )
                      .toList();
                  return ListView.separated(
                    itemCount: list.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const Gap(16),
                    itemBuilder: (context, index) => Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(9, 0, 9, 13),
                          child: AppButton(
                            color: ButtonColors.white,
                            widget: Padding(
                              padding: EdgeInsets.fromLTRB(
                                11,
                                18,
                                MediaQuery.of(context).size.width * 0.1,
                                23,
                              ),
                              child: Text(
                               list[index].tips,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  height: 0,
                                  fontFamily: 'satoshi',
                                ),
                              ).tr(),
                            ),
                            radius: 17,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: AppButton(
                            color: ButtonColors.purple,
                            widget: Padding(
                              padding: EdgeInsets.only(
                               top: 4, bottom: 3, left: 7, right: 7
                              ),
                              child: Icon(
                               list[index].isFavorite
                                    ? CupertinoIcons.heart_fill
                                    : CupertinoIcons.heart,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                             list[index].isFavorite
                                  ? list[index].isFavorite = false
                                  : list[index].isFavorite = true;
                              context
                                  .read<TipsBloc>()
                                  .add(UpdateTips(list[index]));
                            },
                            width: 0,
                            radius: 170,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
