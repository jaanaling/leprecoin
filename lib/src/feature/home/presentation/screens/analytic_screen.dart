import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:leprecoin/src/feature/transaction/bloc/transaction_bloc.dart';
import 'package:leprecoin/src/feature/transaction/model/transaction.dart';
import 'package:leprecoin/ui_kit/app_button/app_button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticScreen extends StatefulWidget {
  AnalyticScreen({super.key});

  @override
  State<AnalyticScreen> createState() => _AnalyticScreenState();
}

class _AnalyticScreenState extends State<AnalyticScreen> {
  bool isIncome = false;

  // Задаём цвета для каждой категории
  final Map<String, Color> categoryColors = {
    'Food & Dining'.tr(): Colors.orange,
    'Transportation'.tr(): Colors.blue,
    'Entertainment'.tr(): Colors.purple,
    'Utilities'.tr(): Colors.brown,
    'Shopping'.tr(): Colors.pink,
    'Health & Wellness'.tr(): Colors.teal,
    'Education'.tr(): Colors.indigo,
    'Travel'.tr(): Colors.cyan,
    'Personal Care'.tr(): Colors.green,
    'Gifts & Donations'.tr(): Colors.red,
    'Housing'.tr(): Colors.amber,
    'Insurance'.tr(): Colors.yellow,
    'Subscriptions'.tr(): Colors.lime,
    'Pets'.tr(): Colors.deepOrange,
    'Salary'.tr(): Colors.lightGreen,
    'Investments'.tr(): Colors.lightBlue,
    'Business Income'.tr(): Colors.deepPurple,
    'Freelance'.tr(): Colors.grey,
    'Gifts'.tr(): Colors.redAccent,
    'Rent Income'.tr(): Colors.blueGrey,
    'Other Income'.tr(): Colors.pink,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6299999952316284),
      child: Column(
        children: [
          Gap(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                color:!isIncome? ButtonColors.white: ButtonColors.purple,
                width: MediaQuery.of(context).size.width * 0.4,
                widget: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Outcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isIncome ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      height: 0,
                      fontFamily: 'satoshi',
                    ),
                  ).tr(),
                ),
                onPressed: () => setState(() {
                  isIncome = false;
                }),
              ),
              Gap(10),
              AppButton(
                width: MediaQuery.of(context).size.width * 0.4,
                color:isIncome? ButtonColors.white: ButtonColors.purple,
                widget: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Income",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: !isIncome ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      height: 0,
                      fontFamily: 'satoshi',
                    ),
                  ).tr(),
                ),
                onPressed: () => setState(() {
                  isIncome = true;
                }),
              ),
            ],
          ),
          BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              if (state is TransactionLoaded) {
                // Группируем транзакции по категориям и суммируем их
                final Map<String, double> groupedExpenses = {};
                for (var transaction in state.transaction
                    .where((e) => (isIncome ? e.isIncome : !e.isIncome))) {
                  groupedExpenses.update(
                    transaction.type,
                    (value) => value + transaction.sum,
                    ifAbsent: () => transaction.sum,
                  );
                }

                // Преобразуем сгруппированные данные в список для диаграммы
                final groupedData = groupedExpenses.entries
                    .map((entry) => Transaction(
                          id: 0,
                          title: entry.key,
                          sum: entry.value,
                          date: '',
                          type: entry.key,
                          isIncome: false,
                        ))
                    .toList();

                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: SfCircularChart(
                    title: ChartTitle(
                      text: 'Transaction\nBreakdown'.tr(),
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    legend: Legend(
                      legendItemBuilder:
                          (legendText, series, point, seriesIndex) => Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.circle,
                                size: 21, color: categoryColors[legendText]),
                            Gap(8),
                            Text(
                              legendText,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontFamily: 'avenir',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ).tr(),
                          ],
                        ),
                      ),
                      isVisible: true,
                      overflowMode: LegendItemOverflowMode.wrap,
                      position: LegendPosition.bottom,
                    ),
                    series: <CircularSeries>[
                      DoughnutSeries<Transaction, String>(
                        dataSource: groupedData,
                        xValueMapper: (Transaction data, _) => data.type.tr(),
                        yValueMapper: (Transaction data, _) => data.sum,
                        dataLabelMapper: (Transaction data, _) =>
                            '${data.type.tr()}: ${data.sum}',
                        dataLabelSettings: DataLabelSettings(
                          isVisible: true,
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        pointColorMapper: (Transaction data, _) =>
                            categoryColors[data.type.tr()] ?? Colors.grey,
                      )
                    ],
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
