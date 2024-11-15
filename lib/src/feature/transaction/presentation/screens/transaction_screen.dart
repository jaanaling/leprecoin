import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:leprecoin/src/feature/transaction/model/trans_element.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../ui_kit/app_button/app_button.dart';
import '../../bloc/transaction_bloc.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  SharedPreferences? pref;
  String? selectedType;
  String? selectedMoth;
  TransElement? _transElement;

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

  void changeSelection(TransElement? transElement) {
    setState(() {
      selectedType = transElement?.title ;
      _transElement = transElement;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final list = state.transaction
              .where(
                  (test) => selectedType == null || test.type == selectedType)
              .toList();
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 35, 16, 250),
                child: SafeArea(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: AppButton(
                            color: ButtonColors.white,
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (childContext) {
                                  final elements = transElements.toList();
                                  TransElement selectedElement = elements.first;
                                  return CupertinoAlertDialog(
                                    title: Text('Select Category').tr(),
                                    content: Column(
                                      children: [
                                        SizedBox(
                                          height: 150,
                                          child: CupertinoPicker(
                                            scrollController:
                                                FixedExtentScrollController(),
                                            itemExtent: 48,
                                            onSelectedItemChanged: (int index) {
                                              selectedElement = elements[index];
                                            },
                                            children: List.generate(
                                                elements.length, (index) {
                                              final element = elements[index];
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    AppIcon(
                                                        asset: element.icon),
                                                    Text(element.title).tr(),
                                                  ],
                                                )),
                                              );
                                            }),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: Text(
                                          'cancel',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .destructiveRed,
                                              fontFamily: 'avenir',
                                              fontWeight: FontWeight.bold),
                                        ).tr(),
                                        onPressed: () {
                                          changeSelection(null);
                                          Navigator.pop(childContext);
                                        },
                                      ),
                                      CupertinoDialogAction(
                                        child: Text(
                                          'Select',
                                          style: TextStyle(
                                              color: CupertinoColors.activeBlue,
                                              fontFamily: 'avenir',
                                              fontWeight: FontWeight.bold),
                                        ).tr(),
                                        onPressed: () {
                                          changeSelection(selectedElement);
                                          if (mounted)
                                            Navigator.pop(childContext);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            width: 0,
                            widget: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (selectedType != null)
                                    Padding(
                                      padding: const EdgeInsets.only(right: 18),
                                      child: AppIcon(
                                          asset: _transElement?.icon ?? ''),
                                    ),
                                  Text(
                                    _transElement?.title ?? 'category',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      fontFamily: 'satoshi',
                                    ),
                                  ).tr(),
                                  Gap(14),
                                  Icon(
                                    CupertinoIcons.chevron_down,
                                    color: Color(0xFF585858),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(16),

                      if (list.isEmpty)
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            'No transactions here!',
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
                                    context.push(
                                        '${RouteValue.transaction.path}/${RouteValue.addTransaction.path}',
                                        extra: list[index]);
                                  },
                                  color: ButtonColors.yellow,
                                  widget: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      7,
                                      11,
                                      13,
                                      5,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppIcon(
                                              asset: getIconByType(
                                                  list[index].type),
                                              width: 50,
                                              height: 50,
                                            ),
                                            const Gap(16),
                                            Text(
                                              '${list[index].title}',
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                fontFamily: 'avenir',
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '${list[index].isIncome ? '+' : '-'}${pref?.getString("Currency") ?? "\$"}${list[index].sum}',
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                fontFamily: 'avenir',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Gap(8),
                                        Text(
                                          DateFormat('MM/dd/yyyy').format(
                                            DateTime.parse(list[index].date),
                                          ),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                          ),
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
                bottom: 127,
                right: MediaQuery.of(context).size.width * 0.05,
                width: 265,
                child: AppButton(
                  color: ButtonColors.purple,
                  onPressed: () {
                    context.push(
                      '${RouteValue.transaction.path}/${RouteValue.addTransaction.path}',
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
                      '+ add new transaction',
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ).tr(),
                  ),
                ),
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
