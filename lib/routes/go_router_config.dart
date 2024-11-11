import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/routes/root_navigation_screen.dart';
import 'package:leprecoin/routes/route_value.dart';
import 'package:leprecoin/src/feature/chellenge/presentation/screens/chellenge_screen.dart';
import 'package:leprecoin/src/feature/goals/presentation/screens/goals_screen.dart';
import 'package:leprecoin/src/feature/home/presentation/screens/home_screen.dart';
import 'package:leprecoin/src/feature/splash/presentation/screens/splash_screen.dart';
import 'package:leprecoin/src/feature/tips/presentation/screens/tips_screen.dart';
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
              builder: (context, state) => Container(
                color: Color(0xFF353535),
                child: HomeScreen(key: UniqueKey()),
              ),
            ),
          ],
        ),
         StatefulShellBranch(
          navigatorKey: _goalsNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.goals.path,
              builder: (context, state) => Container(
                color: Color(0xFF353535),
                child: GoalsScreen(key: UniqueKey()),
              ),
            ),
          ],
        ),
         StatefulShellBranch(
          navigatorKey: _chellengeNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.chellenge.path,
              builder: (context, state) => Container(
                color: Color(0xFF353535),
                child: ChellengeScreen(key: UniqueKey()),
              ),
            ),
          ],
        ),
         StatefulShellBranch(
          navigatorKey: _tipsNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.tips.path,
              builder: (context, state) => Container(
                color: Color(0xFF353535),
                child: TipsScreen(key: UniqueKey()),
              ),
            ),
          ],
        ),
         StatefulShellBranch(
          navigatorKey: _transactionNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.transaction.path,
              builder: (context, state) => Container(
                color: Color(0xFF353535),
                child: TransactionScreen(key: UniqueKey()),
              ),
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
            backgroundColor: CupertinoColors.white,
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
  ],
);
