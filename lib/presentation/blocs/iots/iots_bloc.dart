import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/entities/suitable_position.dart';
import 'package:deforestation_detection/domain/use_cases/iot/change_iot_state_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/check_suitable_iot_position_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/create_iot_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/get_iots_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/get_signaling_iots_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'iots_bloc.freezed.dart';
part 'iots_bloc_event.dart';
part 'iots_bloc_state.dart';
part 'iots_bloc_status.dart';

class IotsBloc extends Bloc<IotsBlocEvent, IotsBlocState> {
  final GetIotsUseCase _getIotsUseCase;
  final GetSignalingIotsUseCase _getSignalingIotsUseCase;
  final CheckSuitableIotPositionUseCase _checkSuitableIotPositionUseCase;
  final CreateIotUseCase _createIotUseCase;
  final ChangeIotStateUseCase _changeIotStateUseCase;

  IotsBloc(
    this._getIotsUseCase,
    this._getSignalingIotsUseCase,
    this._checkSuitableIotPositionUseCase,
    this._createIotUseCase,
    this._changeIotStateUseCase,
  ) : super(const IotsBlocState(IotsBlocStatus.Loading)) {
    add(const IotsBlocEvent.getSignalingIots());
  }

  @override
  Stream<IotsBlocState> mapEventToState(IotsBlocEvent event) => event.when(
        getIots: _getIots,
        getSignalingIots: _getSignalingIots,
        createIotWithPositionCheck: _createIotWithPositionCheck,
        createIot: _createIot,
        reloadIots: _reloadIots,
        changeIotState: _changeIotState,
      );

  Stream<IotsBlocState> _getIots() async* {
    yield _loadingState();
    yield await _getIotsUseCase
        .getIots()
        .then((List<Iot> value) => IotsBlocState(
              IotsBlocStatus.LoadedAllIots,
              iots: value,
            ))
        .catchError(_errorState);
  }

  Stream<IotsBlocState> _getSignalingIots() async* {
    yield _loadingState();
    yield await _getSignalingIotsUseCase
        .getSignalingIots()
        .then((List<Iot> value) => IotsBlocState(
              IotsBlocStatus.LoadedSignalingIots,
              iots: value,
            ))
        .catchError(_errorState);
  }

  Stream<IotsBlocState> _createIotWithPositionCheck(Iot iot) async* {
    try {
      final SuitablePosition suitablePosition =
          await _checkSuitableIotPositionUseCase.checkSuitableIotPosition(iot);
      if (suitablePosition.isSuitable) {
        await _createIotUseCase.createIot(iot);
        yield IotsBlocState(
          IotsBlocStatus.OperationSuccess,
          iots: state.iots,
        );
        if (state.status == IotsBlocStatus.LoadedAllIots) {
          add(const IotsBlocEvent.getIots());
        } else {
          add(const IotsBlocEvent.getSignalingIots());
        }
      } else {
        final IotsBlocStatus prevState = state.status;
        yield IotsBlocState(
          IotsBlocStatus.IotPositionIsNotSuitable,
          iots: state.iots,
          suitablePosition: suitablePosition,
          rejectedIot: iot,
        );
        yield IotsBlocState(
          prevState,
          iots: state.iots,
        );
      }
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<IotsBlocState> _createIot(Iot iot) async* {
    try {
      await _createIotUseCase.createIot(iot);
      yield IotsBlocState(
        IotsBlocStatus.OperationSuccess,
        iots: state.iots,
      );
      if (state.status == IotsBlocStatus.LoadedAllIots) {
        add(const IotsBlocEvent.getIots());
      } else {
        add(const IotsBlocEvent.getSignalingIots());
      }
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<IotsBlocState> _reloadIots() async* {
    if (state.status == IotsBlocStatus.LoadedAllIots) {
      add(const IotsBlocEvent.getIots());
    } else {
      add(const IotsBlocEvent.getSignalingIots());
    }
  }

  Stream<IotsBlocState> _changeIotState(Iot iot) async* {
    try {
      await _changeIotStateUseCase.changeIotState(iot);
      final IotsBlocStatus prevState = state.status;
      yield IotsBlocState(
        IotsBlocStatus.OperationSuccess,
        iots: state.iots,
      );
      if (prevState == IotsBlocStatus.LoadedAllIots) {
        add(const IotsBlocEvent.getIots());
      } else {
        add(const IotsBlocEvent.getSignalingIots());
      }
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  IotsBlocState _loadingState() => IotsBlocState(
        IotsBlocStatus.Loading,
        iots: state.iots,
        suitablePosition: state.suitablePosition,
        rejectedIot: state.rejectedIot,
      );

  IotsBlocState _errorState(Object error) => IotsBlocState(
        IotsBlocStatus.Error,
        iots: state.iots,
        suitablePosition: state.suitablePosition,
        error: error,
        rejectedIot: state.rejectedIot,
      );
}
