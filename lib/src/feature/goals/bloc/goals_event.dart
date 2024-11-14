part of 'goals_bloc.dart';

sealed class GoalsEvent extends Equatable {
  const GoalsEvent();

  @override
  List<Object> get props => [];
}

class LoadGoals extends GoalsEvent {}

class UpdateGoals extends GoalsEvent {
  final double addSum;
  final Goals goals;

  const UpdateGoals(this.goals, this.addSum);

  @override
  List<Object> get props => [goals, addSum];
}

class SaveGoals extends GoalsEvent {
  final Goals goals;

  const SaveGoals(this.goals);

  @override
  List<Object> get props => [goals];
}

class RemoveGoals extends GoalsEvent {
   final Goals goals;

  const RemoveGoals(this.goals);

  @override
  List<Object> get props => [goals];
}
