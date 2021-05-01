import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/entities/suitable_position.dart';

abstract class IotRepository {
  Future<List<Iot>> getIots();

  Future<List<Iot>> getSignalingIots();

  Future<SuitablePosition> checkSuitableIotPosition(Iot iot);

  Future<void> createIot(Iot iot);

  Future<void> changeIotState(Iot iot);
}