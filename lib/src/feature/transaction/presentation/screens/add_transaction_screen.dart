import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:leprecoin/src/core/utils/app_icon.dart';
import 'package:leprecoin/src/feature/transaction/bloc/transaction_bloc.dart';
import 'package:leprecoin/src/feature/transaction/model/transaction.dart';
import 'package:leprecoin/src/feature/transaction/model/transaction.dart';

import 'package:leprecoin/ui_kit/app_button/app_button.dart';

import '../../model/trans_element.dart';

class AddTransactionScreen extends StatefulWidget {
  final Transaction? transaction;
  const AddTransactionScreen({super.key, this.transaction});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  bool isIncome = true;
  final _amountController = TextEditingController();
  final _titleController = TextEditingController();
  bool isAmountError = false;
  bool isTitleError = false;
  bool isCategoryError = false;
  TransElement? transElement;

  void changeSelection() {
    setState(() {});
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.transaction != null) {
      _amountController.text = widget.transaction!.sum.toString();
      _titleController.text = widget.transaction!.title;
      isIncome = widget.transaction!.isIncome;
      transElement = transElements.firstWhere(
        (element) => element.title == widget.transaction!.type,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(28),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  const Spacer(),
                  AppButton(
                    color: !isIncome ? ButtonColors.white : ButtonColors.purple,
                    width: MediaQuery.of(context).size.width * 0.4,
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'consumption',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isIncome ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: 'satoshi',
                        ),
                      ).tr(),
                    ),
                    onPressed: () => setState(() {
                      if (isIncome) {
                        transElement = null;
                      }
                      isIncome = false;
                    }),
                  ),
                  const Gap(10),
                  AppButton(
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: isIncome ? ButtonColors.white : ButtonColors.purple,
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'income',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: !isIncome ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: 'satoshi',
                        ),
                      ).tr(),
                    ),
                    onPressed: () => setState(() {
                      if (!isIncome) {
                        transElement = null;
                      }
                      isIncome = true;
                    }),
                  ),
                ],
              ),
            ),
            const Gap(11),
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
                        final elements = transElements
                            .where(
                              (element) => element.isIncome == isIncome,
                            )
                            .toList();
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
                                  children:
                                      List.generate(elements.length, (index) {
                                    final element = elements[index];
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AppIcon(asset: element.icon),
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
                                    color: CupertinoColors.destructiveRed,
                                    fontFamily: 'avenir',
                                    fontWeight: FontWeight.bold),
                              ).tr(),
                              onPressed: () {
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
                                transElement = selectedElement;
                                isCategoryError = false;
                                changeSelection();
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
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (transElement != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: AppIcon(asset: transElement?.icon ?? ''),
                          ),
                        Text(
                          transElement?.title ?? 'category',
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
            if (isCategoryError)
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 15),
                  child: Text(
                    'Enter valid value',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
            const Gap(10),
            Container(
              width: width * 0.89,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.44999998807907104),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(31),
                    bottomRight: Radius.circular(31),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(12),
                    const Text(
                      'Enter amount',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    const Gap(12),
                    Container(
                      width: width * 0.54,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE6E6E6),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 0.40,
                            color: Color(0xFF7A7A7A),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: CupertinoTextField(
                        controller: _amountController,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onChanged: (value) {
                          if (!(_amountController.text.isEmpty ||
                              double.parse(_amountController.text) == 0)) {
                            setState(() {
                              isAmountError = false;
                            });
                          }
                          // Заменяем запятую на точку
                          String newText = value.replaceAll(',', '.');

                          // Проверяем, что в строке больше одной точки
                          if (newText.split('.').length - 1 > 1) {
                            // Убираем все точки, кроме самой первой
                            int firstDotIndex = newText.indexOf('.');
                            newText = newText.substring(0, firstDotIndex + 1) +
                                newText
                                    .substring(firstDotIndex + 1)
                                    .replaceAll('.', '');
                          }

                          // Ограничиваем ввод до восьми цифр до точки и трех после
                          if (newText.isNotEmpty &&
                              !RegExp(r'^\d{0,8}(\.\d{0,3})?$')
                                  .hasMatch(newText)) {
                            int dotIndex = newText.indexOf('.');

                            if (dotIndex != -1) {
                              String beforeDot = newText.substring(0, dotIndex);
                              String afterDot = newText.substring(dotIndex + 1);

                              // Ограничиваем ввод
                              newText = beforeDot.substring(
                                      0,
                                      beforeDot.length > 8
                                          ? 8
                                          : beforeDot.length) +
                                  '.' +
                                  afterDot.substring(
                                      0,
                                      afterDot.length > 3
                                          ? 3
                                          : afterDot.length);
                            } else {
                              newText = newText.substring(
                                  0, newText.length > 8 ? 8 : newText.length);
                            }
                          }

                          // Обновляем текст только если он изменился
                          if (newText != value) {
                            _amountController.text = newText;
                            _amountController.selection =
                                TextSelection.fromPosition(
                              TextPosition(offset: newText.length),
                            );
                          }
                        },
                        keyboardType: TextInputType.number,
                        placeholder: 'Enter Text...'.tr(),
                        placeholderStyle: const TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontSize: 21,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'satoshi',
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6E6E6),
                          border: Border.all(
                            color: const Color(0xFF7A7A7A),
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontFamily: 'avenir',
                        ),
                      ),
                    ),
                    if (isAmountError)
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Enter valid value',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ).tr(),
                      ),
                    const Gap(19),
                    const Text(
                      'Enter title',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    const Gap(12),
                    Container(
                      width: width * 0.54,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE6E6E6),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 0.40,
                            color: Color(0xFF7A7A7A),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: CupertinoTextField(
                        controller: _titleController,
                        placeholder: 'Enter Text...'.tr(),
                        placeholderStyle: const TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontSize: 21,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'satoshi',
                        ),
                        onChanged: (value) {
                          if (!(_titleController.text.isEmpty ||
                              _titleController.text.trim().isEmpty)) {
                            setState(() {
                              isTitleError = false;
                            });
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6E6E6),
                          border: Border.all(
                            color: const Color(0xFF7A7A7A),
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontFamily: 'avenir',
                        ),
                      ),
                    ),
                    if (isTitleError)
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Enter valid value',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ).tr(),
                      ),
                    const Gap(28),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: AppButton(
                onPressed: () {
                  if (_amountController.text.isEmpty ||
                      double.parse(_amountController.text) == 0) {
                    setState(() {
                      isAmountError = true;
                    });
                  }
                  if (_titleController.text.isEmpty ||
                      _titleController.text.trim().isEmpty) {
                    setState(() {
                      isTitleError = true;
                    });
                  }
                  if (transElement == null) {
                    setState(() {
                      isCategoryError = true;
                    });
                  }

                  if (!(_amountController.text.isEmpty ||
                          double.parse(_amountController.text) == 0) &&
                      !(_titleController.text.isEmpty ||
                          _titleController.text.trim().isEmpty) &&
                      transElement != null) {
                    setState(() {
                      isAmountError = false;
                      isTitleError = false;
                      isCategoryError = false;
                    });
                    if (widget.transaction == null) {
                      context.read<TransactionBloc>().add(
                            SaveTransaction(
                                Transaction(
                                  id: DateTime.now().microsecondsSinceEpoch,
                                  title: _titleController.text,
                                  sum: double.parse(_amountController.text),
                                  date: DateTime.now().toString(),
                                  isIncome: isIncome,
                                  type: transElement?.title ?? '',
                                ),
                                context),
                          );
                    } else {
                      context.read<TransactionBloc>().add(UpdateTransaction(
                          widget.transaction!.copyWith(
                            title: _titleController.text,
                            sum: double.parse(_amountController.text),
                            isIncome: isIncome,
                            type: transElement?.title ?? '',
                          ),
                          context));
                    }
                  }
                },
                width: 298,
                color: ButtonColors.green,
                widget: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 21),
                  child: Text(
                    'save transaction',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ).tr(),
                ),
              ),
            ),
            const Gap(155),
          ],
        ),
      ),
    );
  }
}
