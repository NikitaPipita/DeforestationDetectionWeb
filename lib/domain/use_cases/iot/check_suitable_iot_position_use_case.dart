import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/entities/suitable_position.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';

abstract class CheckSuitableIotPositionUseCase {
  Future<SuitablePosition> checkSuitableIotPosition(Iot iot);
}

class ApiCheckSuitableIotPositionUseCase
    implements CheckSuitableIotPositionUseCase {
  final IotRepository _iotRepository;

  ApiCheckSuitableIotPositionUseCase(
    this._iotRepository,
  );

  @override
  Future<SuitablePosition> checkSuitableIotPosition(Iot iot) =>
      _iotRepository.checkSuitableIotPosition(iot);
}
