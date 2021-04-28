import 'package:deforestation_detection/domain/entities/group.dart';

abstract class GroupRepository {
  Future<List<Group>> getGroups();

  Future<void> createGroup(int userId);
}