import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';

abstract class GetIotsUseCase {
  Future<List<Iot>> getIots();
}

class ApiGetIotsUseCase implements GetIotsUseCase {
  final IotRepository _iotRepository;

  ApiGetIotsUseCase(
    this._iotRepository,
  );

  @override
  Future<List<Iot>> getIots() => _iotRepository.getIots();
}
