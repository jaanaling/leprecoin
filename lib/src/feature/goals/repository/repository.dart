import 'package:leprecoin/src/core/utils/json_loader.dart';
import 'package:leprecoin/src/feature/goals/model/goals.dart';

class GoalsRepository {
  final String key = 'goals';

  Future<List<Goals>> load() {
    return JsonLoader.loadData<Goals>(
      key,
      'assets/json/$key.json',
      (json) => Goals.fromMap(json),
    );
  }

  Future<void> update(Goals updated) async {
    return JsonLoader.modifyDataList<Goals>(
      key,
      updated,
      () async => await load(),
      (item) => item.toMap(),
      (itemList) async {
        final index = itemList.indexWhere((d) => d.id == updated.id);
        if (index != -1) {
          itemList[index] = updated;
        }
      },
    );
  }

  Future<void> save(Goals item) {
    return JsonLoader.saveData<Goals>(
      key,
      item,
      () async => await load(),
      (item) => item.toMap(),
    );
  }

  Future<void> remove(Goals item) {
    return JsonLoader.removeData<Goals>(
      key,
      item,
      () async => await load(),
      (item) => item.toMap(),
    );
  }
}
