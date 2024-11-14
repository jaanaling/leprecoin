part of 'tips_bloc.dart';

sealed class TipsState extends Equatable {
  const TipsState();
  
  @override
  List<Object> get props => [];
}

final class TipsInitial extends TipsState {}

class TipsLoaded extends TipsState {
  final List<Tips> tips;
  const TipsLoaded(this.tips);

  @override
  List<Object> get props => [tips];
}

class TipsLoading extends TipsState {}

class TipsError extends TipsState {
  final String message;

  const TipsError(this.message);

  @override
  List<Object> get props => [message];
}