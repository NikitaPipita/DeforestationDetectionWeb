part of 'groups_bloc.dart';

@immutable
@freezed
abstract class GroupsBlocEvent with _$GroupsBlocEvent {
  const GroupsBlocEvent._();

  const factory GroupsBlocEvent.getGroups() = GetGroupsEvent;

  const factory GroupsBlocEvent.createGroup(int userId) = CreateGroupEvent;
}
