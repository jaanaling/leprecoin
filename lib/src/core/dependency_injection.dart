import 'package:get_it/get_it.dart';
import 'package:leprecoin/src/feature/chellenge/repository/repository.dart';
import 'package:leprecoin/src/feature/goals/repository/repository.dart';
import 'package:leprecoin/src/feature/tips/repository/repository.dart';
import 'package:leprecoin/src/feature/transaction/repository/repository.dart';

final locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerLazySingleton(() => GoalsRepository());
  locator.registerLazySingleton(() => TipsRepository());
  locator.registerLazySingleton(() => TransactionRepository());
  locator.registerLazySingleton(() => ChallengeRepository());
}
