import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:leprecoin/src/core/dependency_injection.dart';
import 'package:leprecoin/src/core/utils/log.dart';
import 'package:leprecoin/src/feature/chellenge/models/chellenge.dart';
import 'package:leprecoin/src/feature/chellenge/repository/repository.dart';

part 'challenge_event.dart';
part 'challenge_state.dart';

class ChallengeBloc extends Bloc<ChallengeEvent, ChallengeState> {
  final ChallengeRepository _repository = locator<ChallengeRepository>();
  

  ChallengeBloc() : super(ChallengeInitial()) {
    on<LoadChallenge>(_onLoadChallenges);
    on<UpdateChallenge>(_onUpdateChallenge);
  }

  Future<void> _onLoadChallenges(
    LoadChallenge event,
    Emitter<ChallengeState> emit,
  ) async {
    emit(ChallengeLoading());
    try {
      final challenge = await _repository.load();
      emit(ChallengeLoaded(challenge));
    } catch (e) {
      logger.e(e);
      emit(const ChallengeError('Failed to load challenge'));
    }
  }

  Future<void> _onUpdateChallenge(
    UpdateChallenge event,
    Emitter<ChallengeState> emit,
  ) async {
    try {
      await _repository.update(event.challenge);
      add(LoadChallenge());
    } catch (e) {
      emit(const ChallengeError('Failed to update challenge'));
    }
  }

 
}
