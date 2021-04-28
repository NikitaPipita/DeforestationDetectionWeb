import 'package:deforestation_detection/domain/repositories/group_repository.dart';

abstract class CreateGroupUseCase {
  Future<void> createGroup(int userId);
}

class ApiCreateGroupUseCase implements CreateGroupUseCase {
  final GroupRepository _groupRepository;

  ApiCreateGroupUseCase(
    this._groupRepository,
  );

  @override
  Future<void> createGroup(int userId) => _groupRepository.createGroup(userId);
}
