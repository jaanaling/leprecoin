import 'package:leprecoin/src/core/utils/json_loader.dart';
import 'package:leprecoin/src/feature/transaction/model/transaction.dart';

class TransactionRepository {
  final String key = 'transaction';

  Future<List<Transaction>> load() {
    return JsonLoader.loadData<Transaction>(
      key,
      'assets/json/$key.json',
      (json) => Transaction.fromMap(json),
    );
  }

  Future<void> update(Transaction updated) async {
    return JsonLoader.modifyDataList<Transaction>(
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

  Future<void> save(Transaction item) {
    return JsonLoader.saveData<Transaction>(
      key,
      item,
      () async => await load(),
      (item) => item.toMap(),
    );
  }

  Future<void> remove(Transaction item) {
    return JsonLoader.removeData<Transaction>(
      key,
      item,
      () async => await load(),
      (item) => item.toMap(),
    );
  }
}
