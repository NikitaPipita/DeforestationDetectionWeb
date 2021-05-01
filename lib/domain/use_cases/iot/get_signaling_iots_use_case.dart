import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';

abstract class GetSignalingIotsUseCase {
  Future<List<Iot>> getSignalingIots();
}

class ApiGetSignalingIotsUseCase implements GetSignalingIotsUseCase {
  final IotRepository _iotRepository;

  ApiGetSignalingIotsUseCase(
      this._iotRepository,
      );

  @override
  Future<List<Iot>> getSignalingIots() => _iotRepository.getSignalingIots();
}
