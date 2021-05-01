import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/gateways/api_iot_gateway.dart';
import 'package:deforestation_detection/data/models/iot_dto.dart';
import 'package:deforestation_detection/data/models/suitable_position_dto.dart';
import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/entities/suitable_position.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';

class ApiIotRepository implements IotRepository {
  final ApiIotGateWay _apiIotGateWay;
  final Factory<Iot, IotDto> _iotFromDtoFactory;
  final Factory<IotDto, Iot> _iotToDtoFactory;
  final Factory<SuitablePosition, SuitablePositionDto>
      _suidatablePositionFactory;

  ApiIotRepository(
    this._apiIotGateWay,
    this._iotFromDtoFactory,
    this._iotToDtoFactory,
    this._suidatablePositionFactory,
  );

  @override
  Future<List<Iot>> getIots() async {
    final List<IotDto> iotsDto = await _apiIotGateWay.getIots();
    return iotsDto.map((IotDto e) => _iotFromDtoFactory.create(e)).toList();
  }

  @override
  Future<List<Iot>> getSignalingIots() async {
    final List<IotDto> iotsDto = await _apiIotGateWay.getSignalingIots();
    return iotsDto.map((IotDto e) => _iotFromDtoFactory.create(e)).toList();
  }

  @override
  Future<SuitablePosition> checkSuitableIotPosition(Iot iot) async {
    final SuitablePositionDto suitablePositionDto = await _apiIotGateWay
        .checkSuitableIotPosition(_iotToDtoFactory.create(iot));
    return _suidatablePositionFactory.create(suitablePositionDto);
  }

  @override
  Future<void> createIot(Iot iot) =>
      _apiIotGateWay.createIot(_iotToDtoFactory.create(iot));

  @override
  Future<void> changeIotState(Iot iot) =>
      _apiIotGateWay.createIot(_iotToDtoFactory.create(iot));
}
