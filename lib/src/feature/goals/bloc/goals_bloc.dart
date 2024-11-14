import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:leprecoin/src/core/dependency_injection.dart';
import 'package:leprecoin/src/feature/goals/model/goals.dart';
import 'package:leprecoin/src/feature/goals/repository/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'goals_event.dart';
part 'goals_state.dart';

class GoalsBloc extends Bloc<GoalsEvent, GoalsState> {
  final GoalsRepository _repository = locator<GoalsRepository>();

  GoalsBloc() : super(GoalsInitial()) {
    on<LoadGoals>(_onLoadGoalss);
    on<UpdateGoals>(_onUpdateGoals);
    on<SaveGoals>(_onSaveGoals);
    on<RemoveGoals>(_onRemoveGoals);
  }

  Future<void> _onLoadGoalss(
    LoadGoals event,
    Emitter<GoalsState> emit,
  ) async {
    emit(GoalsLoading());
    try {
      final goals = await _repository.load();
      emit(GoalsLoaded(goals));
    } catch (e) {
      emit(const GoalsError('Failed to load goals'));
    }
  }

  Future<void> _onUpdateGoals(
    UpdateGoals event,
    Emitter<GoalsState> emit,
  ) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final balance = prefs.getDouble('balance');
      prefs.setDouble('balance', balance ?? 0 - event.addSum);

      await _repository.update(event.goals);
      add(LoadGoals());
    } catch (e) {
      emit(const GoalsError('Failed to update goals'));
    }
  }

  Future<void> _onSaveGoals(
    SaveGoals event,
    Emitter<GoalsState> emit,
  ) async {
    try {
      await _repository.save(event.goals);
      add(LoadGoals());
    } catch (e) {
      emit(const GoalsError('Failed to save goals'));
    }
  }

  Future<void> _onRemoveGoals(
    RemoveGoals event,
    Emitter<GoalsState> emit,
  ) async {
    try {
      await _repository.remove(event.goals);
      add(LoadGoals());
    } catch (e) {
      emit(const GoalsError('Failed to remove transaction'));
    }
  }
}
