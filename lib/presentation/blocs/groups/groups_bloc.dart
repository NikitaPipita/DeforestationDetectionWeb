import 'package:deforestation_detection/domain/entities/group.dart';
import 'package:deforestation_detection/domain/use_cases/group/create_group_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/group/get_groups_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'groups_bloc.freezed.dart';
part 'groups_bloc_event.dart';
part 'groups_bloc_state.dart';
part 'groups_bloc_status.dart';

class GroupsBloc extends Bloc<GroupsBlocEvent, GroupsBlocState> {
  final GetGroupsUseCase _getGroupsUseCase;
  final CreateGroupUseCase _createGroupUseCase;

  GroupsBloc(
    this._getGroupsUseCase,
    this._createGroupUseCase,
  ) : super(const GroupsBlocState(GroupsBlocStatus.Loading)) {
    add(const GetGroupsEvent());
  }

  @override
  Stream<GroupsBlocState> mapEventToState(GroupsBlocEvent event) => event.when(
        getGroups: _getGroups,
        createGroup: _createGroup,
      );

  Stream<GroupsBlocState> _getGroups() async* {
    yield _loadingState();
    yield await _getGroupsUseCase
        .getGroups()
        .then((List<Group> groups) =>
            GroupsBlocState(GroupsBlocStatus.Loaded, groups: groups))
        .catchError(_errorState);
  }

  Stream<GroupsBlocState> _createGroup(int userId) async* {
    try {
      await _createGroupUseCase.createGroup(userId);
      yield GroupsBlocState(
        GroupsBlocStatus.OperationSuccess,
        groups: state.groups,
      );
      add(const GroupsBlocEvent.getGroups());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  GroupsBlocState _loadingState() => GroupsBlocState(
        GroupsBlocStatus.Loading,
        groups: state.groups,
      );

  GroupsBlocState _errorState(Object error) => GroupsBlocState(
        GroupsBlocStatus.Error,
        groups: state.groups,
        error: error,
      );
}
