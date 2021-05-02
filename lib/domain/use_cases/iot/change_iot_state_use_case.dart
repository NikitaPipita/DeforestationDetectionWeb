import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';

abstract class ChangeIotStateUseCase {
  Future<void> changeIotState(Iot iot);
}

class ApiChangeIotStateUseCase implements ChangeIotStateUseCase {
  final IotRepository _iotRepository;

  ApiChangeIotStateUseCase(
    this._iotRepository,
  );

  @override
  Future<void> changeIotState(Iot iot) => _iotRepository.changeIotState(iot);
}
