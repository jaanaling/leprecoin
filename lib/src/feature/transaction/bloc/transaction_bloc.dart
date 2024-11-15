import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:leprecoin/src/core/dependency_injection.dart';
import 'package:leprecoin/src/feature/transaction/model/transaction.dart';
import 'package:leprecoin/src/feature/transaction/repository/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionRepository _repository = locator<TransactionRepository>();

  TransactionBloc() : super(TransactionInitial()) {
    on<LoadTransaction>(_onLoadTransactions);
    on<UpdateTransaction>(_onUpdateTransaction);
    on<SaveTransaction>(_onSaveTransaction);
    on<RemoveTransaction>(_onRemoveTransaction);
  }

  Future<void> _onLoadTransactions(
    LoadTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(TransactionLoading());
    try {
      final transactions = await _repository.load();
      emit(TransactionLoaded(transactions));
    } catch (e) {
      emit(const TransactionError('Failed to load transactions'));
    }
  }

  Future<void> _onUpdateTransaction(
    UpdateTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final balance = prefs.getDouble('balance') ?? 0;
      final oldTransaction = (state as TransactionLoaded)
          .transaction
          .firstWhere((element) => element.id == event.transaction.id);
      await prefs.setDouble(
          'balance',
          balance +
              (oldTransaction.isIncome ? 1 : -1) *
                  (event.transaction.sum - oldTransaction.sum));

      await _repository.update(event.transaction);
      add(LoadTransaction());
    } catch (e) {
      emit(const TransactionError('Failed to update transaction'));
    }
  }

  Future<void> _onSaveTransaction(
    SaveTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final balance = prefs.getDouble('balance') ?? 0;

      await prefs.setDouble(
          'balance',
          balance +
              (event.transaction.isIncome ? 1 : -1) * event.transaction.sum);
      await _repository.save(event.transaction);
      event.context.pop();
      add(LoadTransaction());
    } catch (e) {
      emit(const TransactionError('Failed to save transaction'));
    }
  }

  Future<void> _onRemoveTransaction(
    RemoveTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final balance = prefs.getDouble('balance') ?? 0;

      await prefs.setDouble(
          'balance',
          balance -
              (event.transaction.isIncome ? 1 : -1) * event.transaction.sum);

      await _repository.remove(event.transaction);
      add(LoadTransaction());
    } catch (e) {
      emit(const TransactionError('Failed to remove transaction'));
    }
  }
}
