import 'dart:ffi';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/core/utils/icon_provider.dart';
import 'package:leprecoin/src/feature/goals/bloc/goals_bloc.dart';
import 'package:leprecoin/src/feature/transaction/bloc/transaction_bloc.dart';
import 'package:leprecoin/ui_kit/app_button/app_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SharedPreferences? pref;

  late String quote;
  bool _isMenuOpen = false;
  int _selectedLanguage = 0;
  int _selectedCurrency = 0;

  List<String> savingsQuotes = [
    "A penny saved is a penny closer to your goal!",
    "Saving today, thriving tomorrow!",
    "Small savings today lead to big rewards tomorrow!",
    "Every dollar saved is a step closer to financial freedom!",
    "Spend less, save more, live better!",
    "Your future self will thank you for every penny saved!",
    "A little saved each day adds up in a big way!",
    "Saying no now means saying yes to bigger dreams later!",
    "Saving isn’t a sacrifice; it’s an investment in your future!",
    "Financial freedom starts with every penny you save!",
    "Budgeting today, achieving dreams tomorrow!",
    "The road to wealth is paved with little savings!",
    "Smart savings now means a wealthier tomorrow!",
    "The best time to save was yesterday. The next best time is now!",
    "Saving is the first step towards abundance!",
    "Save today, so you can live the life you want tomorrow!",
    "Your dreams are worth every penny you save!",
    "Every coin counts on the path to financial freedom!",
    "Savings today, possibilities tomorrow!",
    "Think of saving as paying your future self!",
  ];

  String getRandomQuote(List<String> quotes) {
    final random = Random();
    int index = random.nextInt(quotes.length);
    return quotes[index];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getShered();
    quote = getRandomQuote(savingsQuotes);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> getShered() async {
    pref = await SharedPreferences.getInstance();

    switch (context.locale.toString()) {
      case 'en':
        _selectedLanguage = 0;
      case 'fr':
        _selectedLanguage = 3;
      case 'de':
        _selectedLanguage = 2;
      case 'es':
        _selectedLanguage = 1;
      default:
        _selectedLanguage = 0;
    }

    switch (pref!.getString("Currency")) {
      case '\$':
        _selectedCurrency = 0;
      case '€':
        _selectedCurrency = 1;
      case '£':
        _selectedCurrency = 2;
      case '¥':
        _selectedCurrency = 3;
      case '\$A':
        _selectedCurrency = 4;
      default:
        _selectedCurrency = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.75,
                          child: Image.asset(
                            IconProvider.lepr2.buildImageUrl(),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  IconProvider.dialog.buildImageUrl()),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              quote,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontFamily: 'avenir',
                                fontWeight: FontWeight.w700,
                              ),
                            ).tr(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoButton(
                        onPressed: () => setState(() {
                              _isMenuOpen = !_isMenuOpen;
                            }),
                        child: const Icon(Icons.menu,
                            color: Colors.white, size: 55)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Balance:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ).tr(),
                        Gap(3),
                        BlocBuilder<GoalsBloc, GoalsState>(
                          builder: (context, state) {
                            return BlocBuilder<TransactionBloc,
                                TransactionState>(
                              builder: (context, state1) {
                                return AppButton(
                                  color: ButtonColors.green,
                                  radius: 17,
                                  width: 0,
                                  widget: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 32, vertical: 8),
<<<<<<< Updated upstream
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Expanded(
                                        child: Text(
                                          '${pref?.getString("Currency") ?? "\$"} ${pref?.getDouble("balance")?.ceilToDouble() ?? 0}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 29,
                                            fontFamily: 'avenir',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
=======
                                    child: Text(
                                      '${pref?.getString("Currency") ?? "\$"} ${pref?.getDouble("balance") ?? 0}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 29,
                                        fontFamily: 'avenir',
                                        fontWeight: FontWeight.w700,
                                        
>>>>>>> Stashed changes
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        Gap(11),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            context.push(
                                "${RouteValue.home.path}/${RouteValue.analytic.path}");
                          },
                          child: Container(
                            width: 119,
                            height: 119,
                            decoration: ShapeDecoration(
                              color:
                                  Colors.black.withOpacity(0.4099999964237213),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                  IconProvider.graf.buildImageUrl(),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: _isMenuOpen,
          child: Positioned.fill(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isMenuOpen = false; // Закрыть меню при нажатии вне
                });
              },
              child: ColoredBox(color: Color.fromARGB(85, 12, 12, 12)),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Visibility(
            visible: _isMenuOpen,
            child: LayoutBuilder(
              builder: (context, constraints) {
                double menuWidth = constraints.maxWidth * 0.8;
                double menuHeight = constraints.maxHeight * 0.7;

                return Dismissible(
                  key: UniqueKey(), // Уникальный ключ для работы Dismissible
                  direction: DismissDirection.endToStart, // Свайп влево
                  onDismissed: (direction) {
                    setState(() {
                      _isMenuOpen = false; // Закрыть меню при свайпе
                    });
                  },
                  child: Container(
                    width: menuWidth,
                    height: menuHeight,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: const [
                          Color(0xFFEFEFEF),
                          Colors.white,
                          Color(0xFFEBEBEB),
                          Color(0xFFE3E3E3)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(17),
                          bottomRight: Radius.circular(17),
                        ),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 3.80,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 187, 187, 187),
                          blurRadius: 0,
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: ListView(
                        children: [
                          Text(
                            'SELECT CURRENCY',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w500,
                              
                            ),
                          ).tr(),
                          Gap(17),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          Gap(17),
                          BurgerTile2(
                            text: '\$ USD',
                            isActive: _selectedCurrency == 0,
                            onPressed: () => setState(() {
                              _selectedCurrency = 0;
                              pref?.setString("Currency", "\$");
                            }),
                          ),
                          Gap(9),
                          BurgerTile2(
                            text: '€ EUR',
                            isActive: _selectedCurrency == 1,
                            onPressed: () => setState(() {
                              _selectedCurrency = 1;
                              pref?.setString("Currency", "€");
                            }),
                          ),
                          Gap(9),
                          BurgerTile2(
                            text: '£ GBP',
                            isActive: _selectedCurrency == 2,
                            onPressed: () => setState(() {
                              _selectedCurrency = 2;
                              pref?.setString("Currency", "£");
                            }),
                          ),
                          Gap(9),
                          BurgerTile2(
                            text: '¥ JPY',
                            isActive: _selectedCurrency == 3,
                            onPressed: () => setState(() {
                              _selectedCurrency = 3;
                              pref?.setString("Currency", "¥");
                            }),
                          ),
                          Gap(9),
                          BurgerTile2(
                            text: '\$ AUD',
                            isActive: _selectedCurrency == 4,
                            onPressed: () => setState(() {
                              _selectedCurrency = 4;
                              pref?.setString("Currency", "\$A");
                            }),
                          ),
                          Gap(41),
                          Text(
                            'SELECT LANGUAGE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w500,
                              
                            ),
                          ).tr(),
                          Gap(17),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          Gap(17),
                          BurgerTile(
                            text: 'English',
                            isActive: _selectedLanguage == 0,
                            onPressed: () => setState(() {
                              _selectedLanguage = 0;
                              context.setLocale(Locale('en'));
                            }),
                          ),
                          Gap(17),
                          BurgerTile(
                            text: 'Español',
                            isActive: _selectedLanguage == 1,
                            onPressed: () => setState(() {
                              _selectedLanguage = 1;
                              context.setLocale(Locale('es'));
                            }),
                          ),
                          Gap(17),
                          BurgerTile(
                            text: 'Deutsch',
                            isActive: _selectedLanguage == 2,
                            onPressed: () => setState(() {
                              _selectedLanguage = 2;
                              context.setLocale(Locale('de'));
                            }),
                          ),
                          Gap(17),
                          BurgerTile(
                            text: 'Français',
                            isActive: _selectedLanguage == 3,
                            onPressed: () => setState(() {
                              _selectedLanguage = 3;
                              context.setLocale(Locale('fr'));
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class BurgerTile extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;

  const BurgerTile({
    super.key,
    required this.text,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Color(0xFFC0C0C0)),
              ),
            ),
            child: isActive
                ? Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: const [Color(0xFF21EE21), Color(0xFF0BB10B)],
                      ),
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: Color(0xFFC0C0C0)),
                      ),
                    ),
                  )
                : null,
          ),
          Gap(16),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontFamily: 'avenir',
              fontWeight: FontWeight.w500,
              
            ),
          ),
        ],
      ),
    );
  }
}

class BurgerTile2 extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;

  const BurgerTile2({
    super.key,
    required this.text,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'avenir',
              fontWeight: FontWeight.w700,
              
            ),
          ),
          Gap(16),
          Container(
            width: 34,
            height: 34,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Color(0xFFC0C0C0)),
              ),
            ),
            child: isActive
                ? Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: const [Color(0xFF21EE21), Color(0xFF0BB10B)],
                      ),
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: Color(0xFFC0C0C0)),
                      ),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
