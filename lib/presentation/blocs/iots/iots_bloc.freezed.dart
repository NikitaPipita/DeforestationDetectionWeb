// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'iots_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IotsBlocEventTearOff {
  const _$IotsBlocEventTearOff();

  GetIotsEvent getIots() {
    return const GetIotsEvent();
  }

  GetSignalingIotsEvent getSignalingIots() {
    return const GetSignalingIotsEvent();
  }

  ReloadIotsEvent reloadIots() {
    return const ReloadIotsEvent();
  }

  CreateIotWithPositionCheckEvent createIotWithPositionCheck(Iot iot) {
    return CreateIotWithPositionCheckEvent(
      iot,
    );
  }

  CreateIotEvent createIot(Iot iot) {
    return CreateIotEvent(
      iot,
    );
  }

  ChangeIotStateEvent changeIotState(Iot iot) {
    return ChangeIotStateEvent(
      iot,
    );
  }
}

/// @nodoc
const $IotsBlocEvent = _$IotsBlocEventTearOff();

/// @nodoc
mixin _$IotsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IotsBlocEventCopyWith<$Res> {
  factory $IotsBlocEventCopyWith(
          IotsBlocEvent value, $Res Function(IotsBlocEvent) then) =
      _$IotsBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IotsBlocEventCopyWithImpl<$Res>
    implements $IotsBlocEventCopyWith<$Res> {
  _$IotsBlocEventCopyWithImpl(this._value, this._then);

  final IotsBlocEvent _value;
  // ignore: unused_field
  final $Res Function(IotsBlocEvent) _then;
}

/// @nodoc
abstract class $GetIotsEventCopyWith<$Res> {
  factory $GetIotsEventCopyWith(
          GetIotsEvent value, $Res Function(GetIotsEvent) then) =
      _$GetIotsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetIotsEventCopyWithImpl<$Res> extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $GetIotsEventCopyWith<$Res> {
  _$GetIotsEventCopyWithImpl(
      GetIotsEvent _value, $Res Function(GetIotsEvent) _then)
      : super(_value, (v) => _then(v as GetIotsEvent));

  @override
  GetIotsEvent get _value => super._value as GetIotsEvent;
}

/// @nodoc
class _$GetIotsEvent extends GetIotsEvent with DiagnosticableTreeMixin {
  const _$GetIotsEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.getIots()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'IotsBlocEvent.getIots'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetIotsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) {
    return getIots();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) {
    if (getIots != null) {
      return getIots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) {
    return getIots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) {
    if (getIots != null) {
      return getIots(this);
    }
    return orElse();
  }
}

abstract class GetIotsEvent extends IotsBlocEvent {
  const factory GetIotsEvent() = _$GetIotsEvent;
  const GetIotsEvent._() : super._();
}

/// @nodoc
abstract class $GetSignalingIotsEventCopyWith<$Res> {
  factory $GetSignalingIotsEventCopyWith(GetSignalingIotsEvent value,
          $Res Function(GetSignalingIotsEvent) then) =
      _$GetSignalingIotsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSignalingIotsEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $GetSignalingIotsEventCopyWith<$Res> {
  _$GetSignalingIotsEventCopyWithImpl(
      GetSignalingIotsEvent _value, $Res Function(GetSignalingIotsEvent) _then)
      : super(_value, (v) => _then(v as GetSignalingIotsEvent));

  @override
  GetSignalingIotsEvent get _value => super._value as GetSignalingIotsEvent;
}

/// @nodoc
class _$GetSignalingIotsEvent extends GetSignalingIotsEvent
    with DiagnosticableTreeMixin {
  const _$GetSignalingIotsEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.getSignalingIots()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IotsBlocEvent.getSignalingIots'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSignalingIotsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) {
    return getSignalingIots();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) {
    if (getSignalingIots != null) {
      return getSignalingIots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) {
    return getSignalingIots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) {
    if (getSignalingIots != null) {
      return getSignalingIots(this);
    }
    return orElse();
  }
}

abstract class GetSignalingIotsEvent extends IotsBlocEvent {
  const factory GetSignalingIotsEvent() = _$GetSignalingIotsEvent;
  const GetSignalingIotsEvent._() : super._();
}

/// @nodoc
abstract class $ReloadIotsEventCopyWith<$Res> {
  factory $ReloadIotsEventCopyWith(
          ReloadIotsEvent value, $Res Function(ReloadIotsEvent) then) =
      _$ReloadIotsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReloadIotsEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $ReloadIotsEventCopyWith<$Res> {
  _$ReloadIotsEventCopyWithImpl(
      ReloadIotsEvent _value, $Res Function(ReloadIotsEvent) _then)
      : super(_value, (v) => _then(v as ReloadIotsEvent));

  @override
  ReloadIotsEvent get _value => super._value as ReloadIotsEvent;
}

/// @nodoc
class _$ReloadIotsEvent extends ReloadIotsEvent with DiagnosticableTreeMixin {
  const _$ReloadIotsEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.reloadIots()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'IotsBlocEvent.reloadIots'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReloadIotsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) {
    return reloadIots();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) {
    if (reloadIots != null) {
      return reloadIots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) {
    return reloadIots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) {
    if (reloadIots != null) {
      return reloadIots(this);
    }
    return orElse();
  }
}

abstract class ReloadIotsEvent extends IotsBlocEvent {
  const factory ReloadIotsEvent() = _$ReloadIotsEvent;
  const ReloadIotsEvent._() : super._();
}

/// @nodoc
abstract class $CreateIotWithPositionCheckEventCopyWith<$Res> {
  factory $CreateIotWithPositionCheckEventCopyWith(
          CreateIotWithPositionCheckEvent value,
          $Res Function(CreateIotWithPositionCheckEvent) then) =
      _$CreateIotWithPositionCheckEventCopyWithImpl<$Res>;
  $Res call({Iot iot});
}

/// @nodoc
class _$CreateIotWithPositionCheckEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $CreateIotWithPositionCheckEventCopyWith<$Res> {
  _$CreateIotWithPositionCheckEventCopyWithImpl(
      CreateIotWithPositionCheckEvent _value,
      $Res Function(CreateIotWithPositionCheckEvent) _then)
      : super(_value, (v) => _then(v as CreateIotWithPositionCheckEvent));

  @override
  CreateIotWithPositionCheckEvent get _value =>
      super._value as CreateIotWithPositionCheckEvent;

  @override
  $Res call({
    Object? iot = freezed,
  }) {
    return _then(CreateIotWithPositionCheckEvent(
      iot == freezed
          ? _value.iot
          : iot // ignore: cast_nullable_to_non_nullable
              as Iot,
    ));
  }
}

/// @nodoc
class _$CreateIotWithPositionCheckEvent extends CreateIotWithPositionCheckEvent
    with DiagnosticableTreeMixin {
  const _$CreateIotWithPositionCheckEvent(this.iot) : super._();

  @override
  final Iot iot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.createIotWithPositionCheck(iot: $iot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'IotsBlocEvent.createIotWithPositionCheck'))
      ..add(DiagnosticsProperty('iot', iot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateIotWithPositionCheckEvent &&
            (identical(other.iot, iot) ||
                const DeepCollectionEquality().equals(other.iot, iot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iot);

  @JsonKey(ignore: true)
  @override
  $CreateIotWithPositionCheckEventCopyWith<CreateIotWithPositionCheckEvent>
      get copyWith => _$CreateIotWithPositionCheckEventCopyWithImpl<
          CreateIotWithPositionCheckEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) {
    return createIotWithPositionCheck(iot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) {
    if (createIotWithPositionCheck != null) {
      return createIotWithPositionCheck(iot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) {
    return createIotWithPositionCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) {
    if (createIotWithPositionCheck != null) {
      return createIotWithPositionCheck(this);
    }
    return orElse();
  }
}

abstract class CreateIotWithPositionCheckEvent extends IotsBlocEvent {
  const factory CreateIotWithPositionCheckEvent(Iot iot) =
      _$CreateIotWithPositionCheckEvent;
  const CreateIotWithPositionCheckEvent._() : super._();

  Iot get iot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateIotWithPositionCheckEventCopyWith<CreateIotWithPositionCheckEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateIotEventCopyWith<$Res> {
  factory $CreateIotEventCopyWith(
          CreateIotEvent value, $Res Function(CreateIotEvent) then) =
      _$CreateIotEventCopyWithImpl<$Res>;
  $Res call({Iot iot});
}

/// @nodoc
class _$CreateIotEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $CreateIotEventCopyWith<$Res> {
  _$CreateIotEventCopyWithImpl(
      CreateIotEvent _value, $Res Function(CreateIotEvent) _then)
      : super(_value, (v) => _then(v as CreateIotEvent));

  @override
  CreateIotEvent get _value => super._value as CreateIotEvent;

  @override
  $Res call({
    Object? iot = freezed,
  }) {
    return _then(CreateIotEvent(
      iot == freezed
          ? _value.iot
          : iot // ignore: cast_nullable_to_non_nullable
              as Iot,
    ));
  }
}

/// @nodoc
class _$CreateIotEvent extends CreateIotEvent with DiagnosticableTreeMixin {
  const _$CreateIotEvent(this.iot) : super._();

  @override
  final Iot iot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.createIot(iot: $iot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IotsBlocEvent.createIot'))
      ..add(DiagnosticsProperty('iot', iot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateIotEvent &&
            (identical(other.iot, iot) ||
                const DeepCollectionEquality().equals(other.iot, iot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iot);

  @JsonKey(ignore: true)
  @override
  $CreateIotEventCopyWith<CreateIotEvent> get copyWith =>
      _$CreateIotEventCopyWithImpl<CreateIotEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) {
    return createIot(iot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) {
    if (createIot != null) {
      return createIot(iot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) {
    return createIot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) {
    if (createIot != null) {
      return createIot(this);
    }
    return orElse();
  }
}

abstract class CreateIotEvent extends IotsBlocEvent {
  const factory CreateIotEvent(Iot iot) = _$CreateIotEvent;
  const CreateIotEvent._() : super._();

  Iot get iot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateIotEventCopyWith<CreateIotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeIotStateEventCopyWith<$Res> {
  factory $ChangeIotStateEventCopyWith(
          ChangeIotStateEvent value, $Res Function(ChangeIotStateEvent) then) =
      _$ChangeIotStateEventCopyWithImpl<$Res>;
  $Res call({Iot iot});
}

/// @nodoc
class _$ChangeIotStateEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $ChangeIotStateEventCopyWith<$Res> {
  _$ChangeIotStateEventCopyWithImpl(
      ChangeIotStateEvent _value, $Res Function(ChangeIotStateEvent) _then)
      : super(_value, (v) => _then(v as ChangeIotStateEvent));

  @override
  ChangeIotStateEvent get _value => super._value as ChangeIotStateEvent;

  @override
  $Res call({
    Object? iot = freezed,
  }) {
    return _then(ChangeIotStateEvent(
      iot == freezed
          ? _value.iot
          : iot // ignore: cast_nullable_to_non_nullable
              as Iot,
    ));
  }
}

/// @nodoc
class _$ChangeIotStateEvent extends ChangeIotStateEvent
    with DiagnosticableTreeMixin {
  const _$ChangeIotStateEvent(this.iot) : super._();

  @override
  final Iot iot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.changeIotState(iot: $iot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IotsBlocEvent.changeIotState'))
      ..add(DiagnosticsProperty('iot', iot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeIotStateEvent &&
            (identical(other.iot, iot) ||
                const DeepCollectionEquality().equals(other.iot, iot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iot);

  @JsonKey(ignore: true)
  @override
  $ChangeIotStateEventCopyWith<ChangeIotStateEvent> get copyWith =>
      _$ChangeIotStateEventCopyWithImpl<ChangeIotStateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function() getSignalingIots,
    required TResult Function() reloadIots,
    required TResult Function(Iot iot) createIotWithPositionCheck,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) changeIotState,
  }) {
    return changeIotState(iot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function()? getSignalingIots,
    TResult Function()? reloadIots,
    TResult Function(Iot iot)? createIotWithPositionCheck,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? changeIotState,
    required TResult orElse(),
  }) {
    if (changeIotState != null) {
      return changeIotState(iot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(GetSignalingIotsEvent value) getSignalingIots,
    required TResult Function(ReloadIotsEvent value) reloadIots,
    required TResult Function(CreateIotWithPositionCheckEvent value)
        createIotWithPositionCheck,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(ChangeIotStateEvent value) changeIotState,
  }) {
    return changeIotState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(GetSignalingIotsEvent value)? getSignalingIots,
    TResult Function(ReloadIotsEvent value)? reloadIots,
    TResult Function(CreateIotWithPositionCheckEvent value)?
        createIotWithPositionCheck,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(ChangeIotStateEvent value)? changeIotState,
    required TResult orElse(),
  }) {
    if (changeIotState != null) {
      return changeIotState(this);
    }
    return orElse();
  }
}

abstract class ChangeIotStateEvent extends IotsBlocEvent {
  const factory ChangeIotStateEvent(Iot iot) = _$ChangeIotStateEvent;
  const ChangeIotStateEvent._() : super._();

  Iot get iot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeIotStateEventCopyWith<ChangeIotStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
