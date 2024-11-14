part of 'goals_bloc.dart';

sealed class GoalsState extends Equatable {
  const GoalsState();
  
  @override
  List<Object> get props => [];
}

final class GoalsInitial extends GoalsState {}

class GoalsLoaded extends GoalsState {
  final List<Goals> goals;
  const GoalsLoaded(this.goals);

  @override
  List<Object> get props => [goals];
}

class GoalsLoading extends GoalsState {}

class GoalsError extends GoalsState {
  final String message;

  const GoalsError(this.message);

  @override
  List<Object> get props => [message];
}