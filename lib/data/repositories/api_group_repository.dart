import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/gateways/api_group_gateway.dart';
import 'package:deforestation_detection/data/models/group_dto.dart';
import 'package:deforestation_detection/domain/entities/group.dart';
import 'package:deforestation_detection/domain/repositories/group_repository.dart';

class ApiGroupRepository implements GroupRepository {
  final ApiGroupGateWay _apiGroupGateWay;
  final Factory<Group, GroupDto> _groupFromDtoFactory;

  ApiGroupRepository(
    this._apiGroupGateWay,
    this._groupFromDtoFactory,
  );

  @override
  Future<List<Group>> getGroups() async {
    final List<GroupDto> groupsDto = await _apiGroupGateWay.getGroups();
    return groupsDto
        .map((GroupDto e) => _groupFromDtoFactory.create(e))
        .toList();
  }

  @override
  Future<void> createGroup(int userId) => _apiGroupGateWay.createGroup(userId);
}
