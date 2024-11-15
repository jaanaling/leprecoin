import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:leprecoin/src/feature/transaction/model/trans_element.dart';

import '../../../../../ui_kit/app_button/app_button.dart';
import '../../bloc/transaction_bloc.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final list = state.transaction;
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (list.isEmpty)
                        const Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            'No transactions here!',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              
                              fontFamily: 'avenir',
                            ),
                          ),
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
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            AppIcon(
                                              asset: getIconByType(
                                                  list[index].type),
                                              width: 50,
                                              height: 50,
                                            ),
                                            Text(
                                              '${list[index].isIncome ? '-' : ''}\$${list[index].sum}',
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
                  widget: const Padding(
                    padding: EdgeInsets.only(
                      top: 6,
                      bottom: 12,
                      left: 22,
                      right: 22,
                    ),
                    child: Text(
                      '+ add new transaction',
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ),
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
