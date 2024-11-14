import 'package:leprecoin/src/core/utils/json_loader.dart';
import 'package:leprecoin/src/feature/chellenge/models/chellenge.dart';

class ChallengeRepository {
  final String key = 'challenge';

  Future<List<Challenge>> load() {
    return JsonLoader.loadData<Challenge>(
      key,
      'assets/json/$key.json',
      (json) => Challenge.fromMap(json),
    );
  }

  Future<void> update(Challenge updated) async {
    return JsonLoader.modifyDataList<Challenge>(
      key,
      updated,
      () async => await load(),
      (item) => item.toMap(),
      (itemList) async {
        final index =
            itemList.indexWhere((d) => d.challenge == updated.challenge);
        if (index != -1) {
          itemList[index] = updated;
        }
      },
    );
  }

  Future<void> save(Challenge item) {
    return JsonLoader.saveData<Challenge>(
      key,
      item,
      () async => await load(),
      (item) => item.toMap(),
    );
  }
}
