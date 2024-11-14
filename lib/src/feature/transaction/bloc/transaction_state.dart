part of 'transaction_bloc.dart';

sealed class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

final class TransactionInitial extends TransactionState {}

class TransactionLoaded extends TransactionState {
  final List<Transaction> transaction;
  const TransactionLoaded(this.transaction);

  @override
  List<Object> get props => [transaction];
}

class TransactionLoading extends TransactionState {}

class TransactionError extends TransactionState {
  final String message;

  const TransactionError(this.message);

  @override
  List<Object> get props => [message];
}