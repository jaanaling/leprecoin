part of 'transaction_bloc.dart';

sealed class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class LoadTransaction extends TransactionEvent {}

class UpdateTransaction extends TransactionEvent {
  final Transaction transaction;

  const UpdateTransaction(this.transaction);

  @override
  List<Object> get props => [transaction];
}

class SaveTransaction extends TransactionEvent {
  final Transaction transaction;
  final BuildContext context;

  const SaveTransaction(this.transaction, this.context);

  @override
  List<Object> get props => [transaction];
}

class RemoveTransaction extends TransactionEvent {
  final Transaction transaction;

  const RemoveTransaction(this.transaction);

  @override
  List<Object> get props => [transaction];
}
