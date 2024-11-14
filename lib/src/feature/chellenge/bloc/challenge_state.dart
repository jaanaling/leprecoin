part of 'challenge_bloc.dart';

sealed class ChallengeState extends Equatable {
  const ChallengeState();
  
  @override
  List<Object> get props => [];
}

final class ChallengeInitial extends ChallengeState {}

class ChallengeLoaded extends ChallengeState {
  final List<Challenge> challenge;
  const ChallengeLoaded(this.challenge);

  @override
  List<Object> get props => [challenge];
}

class ChallengeLoading extends ChallengeState {}

class ChallengeError extends ChallengeState {
  final String message;

  const ChallengeError(this.message);

  @override
  List<Object> get props => [message];
}