import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:leprecoin/src/core/dependency_injection.dart';
import 'package:leprecoin/src/core/utils/log.dart';
import 'package:leprecoin/src/feature/tips/models/tips.dart';
import 'package:leprecoin/src/feature/tips/repository/repository.dart';

part 'tips_event.dart';
part 'tips_state.dart';

class TipsBloc extends Bloc<TipsEvent, TipsState> {
  final TipsRepository _repository = locator<TipsRepository>();

  TipsBloc() : super(TipsInitial()) {
    on<LoadTips>(_onLoadTipss);
    on<UpdateTips>(_onUpdateTips);
    on<SaveTips>(_onSaveTips);
  }

  Future<void> _onLoadTipss(
    LoadTips event,
    Emitter<TipsState> emit,
  ) async {
    emit(TipsLoading());
    try {
      final tips = await _repository.load();
      emit(TipsLoaded(tips));
    } catch (e) {
      logger.e(e);
      emit(const TipsError('Failed to load tips'));
    }
  }

  Future<void> _onUpdateTips(
    UpdateTips event,
    Emitter<TipsState> emit,
  ) async {
    try {
      await _repository.update(event.tips);
      add(LoadTips());
    } catch (e) {
      emit(const TipsError('Failed to update transaction'));
    }
  }

  Future<void> _onSaveTips(
    SaveTips event,
    Emitter<TipsState> emit,
  ) async {
    try {
      await _repository.save(event.tips);
      add(LoadTips());
    } catch (e) {
      emit(const TipsError('Failed to save transaction'));
    }
  }
}
