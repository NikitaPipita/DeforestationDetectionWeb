import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';

abstract class ChangeIotStateUseCase {
  Future<void> changeIotState(Iot iot);
}

class ApiChangeIotUseCase implements ChangeIotStateUseCase {
  final IotRepository _iotRepository;

  ApiChangeIotUseCase(
    this._iotRepository,
  );

  @override
  Future<void> changeIotState(Iot iot) => _iotRepository.changeIotState(iot);
}
