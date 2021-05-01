import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/models/iot_dto.dart';
import 'package:deforestation_detection/domain/entities/iot.dart';

class IotFromDtoFactory implements Factory<Iot, IotDto> {
  @override
  Iot create(IotDto arg) {
    return Iot(
      id: arg.id,
      userId: arg.userId,
      groupId: arg.groupId,
      longitude: arg.longitude,
      latitude: arg.latitude,
      state: arg.state,
      type: arg.type,
    );
  }
}
