import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/models/suitable_position_dto.dart';
import 'package:deforestation_detection/domain/entities/suitable_position.dart';

class SuitablePositionFromDtoFactory
    implements Factory<SuitablePosition, SuitablePositionDto> {
  @override
  SuitablePosition create(SuitablePositionDto arg) {
    return SuitablePosition(
      isSuitable: arg.isSuitable,
      minimumDistanceToMoveAway: arg.minimumDistanceToMoveAway,
    );
  }
}
