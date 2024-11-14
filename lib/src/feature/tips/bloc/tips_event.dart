part of 'tips_bloc.dart';

sealed class TipsEvent extends Equatable {
  const TipsEvent();

  @override
  List<Object> get props => [];
}

class LoadTips extends TipsEvent {}

class UpdateTips extends TipsEvent {
  final Tips tips;

  const UpdateTips(this.tips);

  @override
  List<Object> get props => [tips];
}

class SaveTips extends TipsEvent {
  final Tips tips;

  const SaveTips(this.tips);

  @override
  List<Object> get props => [tips];
}