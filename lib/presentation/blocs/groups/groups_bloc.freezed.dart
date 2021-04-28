// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupsBlocEventTearOff {
  const _$GroupsBlocEventTearOff();

  GetGroupsEvent getGroups() {
    return const GetGroupsEvent();
  }

  CreateGroupEvent createGroup(int userId) {
    return CreateGroupEvent(
      userId,
    );
  }
}

/// @nodoc
const $GroupsBlocEvent = _$GroupsBlocEventTearOff();

/// @nodoc
mixin _$GroupsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(int userId) createGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(int userId)? createGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsBlocEventCopyWith<$Res> {
  factory $GroupsBlocEventCopyWith(
          GroupsBlocEvent value, $Res Function(GroupsBlocEvent) then) =
      _$GroupsBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsBlocEventCopyWithImpl<$Res>
    implements $GroupsBlocEventCopyWith<$Res> {
  _$GroupsBlocEventCopyWithImpl(this._value, this._then);

  final GroupsBlocEvent _value;
  // ignore: unused_field
  final $Res Function(GroupsBlocEvent) _then;
}

/// @nodoc
abstract class $GetGroupsEventCopyWith<$Res> {
  factory $GetGroupsEventCopyWith(
          GetGroupsEvent value, $Res Function(GetGroupsEvent) then) =
      _$GetGroupsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGroupsEventCopyWithImpl<$Res>
    extends _$GroupsBlocEventCopyWithImpl<$Res>
    implements $GetGroupsEventCopyWith<$Res> {
  _$GetGroupsEventCopyWithImpl(
      GetGroupsEvent _value, $Res Function(GetGroupsEvent) _then)
      : super(_value, (v) => _then(v as GetGroupsEvent));

  @override
  GetGroupsEvent get _value => super._value as GetGroupsEvent;
}

/// @nodoc
class _$GetGroupsEvent extends GetGroupsEvent with DiagnosticableTreeMixin {
  const _$GetGroupsEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupsBlocEvent.getGroups()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GroupsBlocEvent.getGroups'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetGroupsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(int userId) createGroup,
  }) {
    return getGroups();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(int userId)? createGroup,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
  }) {
    return getGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups(this);
    }
    return orElse();
  }
}

abstract class GetGroupsEvent extends GroupsBlocEvent {
  const factory GetGroupsEvent() = _$GetGroupsEvent;
  const GetGroupsEvent._() : super._();
}

/// @nodoc
abstract class $CreateGroupEventCopyWith<$Res> {
  factory $CreateGroupEventCopyWith(
          CreateGroupEvent value, $Res Function(CreateGroupEvent) then) =
      _$CreateGroupEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$CreateGroupEventCopyWithImpl<$Res>
    extends _$GroupsBlocEventCopyWithImpl<$Res>
    implements $CreateGroupEventCopyWith<$Res> {
  _$CreateGroupEventCopyWithImpl(
      CreateGroupEvent _value, $Res Function(CreateGroupEvent) _then)
      : super(_value, (v) => _then(v as CreateGroupEvent));

  @override
  CreateGroupEvent get _value => super._value as CreateGroupEvent;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(CreateGroupEvent(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$CreateGroupEvent extends CreateGroupEvent with DiagnosticableTreeMixin {
  const _$CreateGroupEvent(this.userId) : super._();

  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupsBlocEvent.createGroup(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupsBlocEvent.createGroup'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateGroupEvent &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $CreateGroupEventCopyWith<CreateGroupEvent> get copyWith =>
      _$CreateGroupEventCopyWithImpl<CreateGroupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(int userId) createGroup,
  }) {
    return createGroup(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(int userId)? createGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class CreateGroupEvent extends GroupsBlocEvent {
  const factory CreateGroupEvent(int userId) = _$CreateGroupEvent;
  const CreateGroupEvent._() : super._();

  int get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGroupEventCopyWith<CreateGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
