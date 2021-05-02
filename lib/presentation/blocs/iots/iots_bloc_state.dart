part of 'iots_bloc.dart';

@immutable
class IotsBlocState {
  final IotsBlocStatus status;
  final List<Iot>? iots;
  final SuitablePosition? suitablePosition;
  final Iot? rejectedIot;
  final Object? error;

  const IotsBlocState(
    this.status, {
    this.iots,
    this.suitablePosition,
    this.rejectedIot,
    this.error,
  });
}
