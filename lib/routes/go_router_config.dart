import 'package:core_logic/core_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/routes/root_navigation_screen.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/feature/chellenge/presentation/screens/chellenge_screen.dart';
import 'package:leprecoin/src/feature/goals/presentation/screens/goals_screen.dart';
import 'package:leprecoin/src/feature/home/presentation/privacy.dart';
import 'package:leprecoin/src/feature/home/presentation/screens/analytic_screen.dart';
import 'package:leprecoin/src/feature/home/presentation/screens/home_screen.dart';
import 'package:leprecoin/src/feature/splash/presentation/screens/splash_screen.dart';
import 'package:leprecoin/src/feature/tips/presentation/screens/tips_screen.dart';
import 'package:leprecoin/src/feature/transaction/model/transaction.dart';
import 'package:leprecoin/src/feature/transaction/presentation/screens/add_transaction_screen.dart';
import 'package:leprecoin/src/feature/transaction/presentation/screens/transaction_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>();
final _goalsNavigatorKey = GlobalKey<NavigatorState>();
final _chellengeNavigatorKey = GlobalKey<NavigatorState>();
final _tipsNavigatorKey = GlobalKey<NavigatorState>();
final _transactionNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildGoRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteValue.splash.path,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, navigationShell) {
        return NoTransitionPage(
          child: RootNavigationScreen(
            navigationShell: navigationShell,
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.home.path,
              builder: (context, state) => HomeScreen(),
              routes: [
            GoRoute(
              path: RouteValue.analytic.path,
              builder: (context, state) => AnalyticScreen(),
           
            )
          ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _goalsNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.goals.path,
              builder: (context, state) => GoalsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _chellengeNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.chellenge.path,
              builder: (context, state) => ChellengeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _tipsNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.tips.path,
              builder: (context, state) => TipsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _transactionNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.transaction.path,
              builder: (context, state) => TransactionScreen(),
              routes: [
                GoRoute(
                  path: RouteValue.addTransaction.path,
                  builder: (context, state) => AddTransactionScreen(transaction: state.extra as Transaction?,),

                )
              ]
            ),
          ],
        ),
      ],
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: CupertinoPageScaffold(
            backgroundColor: CupertinoColors.black,
            child: child,
          ),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: RouteValue.splash.path,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          },
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/core',
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: CoreScreen(
            key: UniqueKey(),
          ),
        );
      },
    ),
     GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/privacy',
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: PrivicyScreen(
            key: UniqueKey(),
          ),
        );
      },
    ),
  ],
);
