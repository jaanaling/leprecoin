import 'package:leprecoin/src/core/utils/json_loader.dart';
import 'package:leprecoin/src/feature/tips/models/tips.dart';

class TipsRepository {
final String key = 'tips';


  Future<List<Tips>> load() {
    return JsonLoader.loadData<Tips>(
      key,
      'assets/json/$key.json',
      (json) => Tips.fromMap(json),
    );
  }

  Future<void> update(Tips updated) async {
    return JsonLoader.modifyDataList<Tips>(
      key,
      updated,
      () async => await load(),
      (item) => item.toMap(),
      (itemList) async {
        final index = itemList.indexWhere((d) => d.tips == updated.tips);
        if (index != -1) {
          itemList[index] = updated;
        }
      },
    );
  }

  Future<void> save(Tips item) {
    return JsonLoader.saveData<Tips>(
      key,
      item,
      () async => await load(),
      (item) => item.toMap(),
    );
  }
}
