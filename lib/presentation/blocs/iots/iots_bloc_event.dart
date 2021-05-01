part of 'iots_bloc.dart';

@immutable
@freezed
abstract class IotsBlocEvent with _$IotsBlocEvent {
  const IotsBlocEvent._();

  const factory IotsBlocEvent.getIots() = GetIotsEvent;

  const factory IotsBlocEvent.getSignalingIots() = GetSignalingIotsEvent;

  const factory IotsBlocEvent.createIot(Iot iot) = CreateIotEvent;

  const factory IotsBlocEvent.changeIotState(Iot iot) = ChangeIotStateEvent;
}
