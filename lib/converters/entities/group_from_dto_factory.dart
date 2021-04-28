import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/models/group_dto.dart';
import 'package:deforestation_detection/domain/entities/group.dart';

class GroupFromDtoFactory implements Factory<Group, GroupDto> {
  @override
  Group create(GroupDto arg) {
    return Group(
      id: arg.id,
    );
  }
}
