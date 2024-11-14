part of 'challenge_bloc.dart';

sealed class ChallengeEvent extends Equatable {
  const ChallengeEvent();

  @override
  List<Object> get props => [];
}

class LoadChallenge extends ChallengeEvent {}

class UpdateChallenge extends ChallengeEvent {
  final Challenge challenge;

  const UpdateChallenge(this.challenge);

  @override
  List<Object> get props => [challenge];
}

class SaveChallenge extends ChallengeEvent {
  final Challenge challenge;

  const SaveChallenge(this.challenge);

  @override
  List<Object> get props => [challenge];
}