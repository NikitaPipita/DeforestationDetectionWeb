import 'package:deforestation_detection/converters/entities/group_from_dto_factory.dart';
import 'package:deforestation_detection/converters/entities/iot_from_dto_factory.dart';
import 'package:deforestation_detection/converters/entities/suitable_position_from_dto_factory.dart';
import 'package:deforestation_detection/converters/entities/user_from_dto_factory.dart';
import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/converters/models/iot_to_dto_factory.dart';
import 'package:deforestation_detection/data/gateways/api_authentication_gateway.dart';
import 'package:deforestation_detection/data/gateways/api_group_gateway.dart';
import 'package:deforestation_detection/data/gateways/api_iot_gateway.dart';
import 'package:deforestation_detection/data/gateways/api_provider.dart';
import 'package:deforestation_detection/data/models/group_dto.dart';
import 'package:deforestation_detection/data/models/iot_dto.dart';
import 'package:deforestation_detection/data/models/suitable_position_dto.dart';
import 'package:deforestation_detection/data/models/user_dto.dart';
import 'package:deforestation_detection/data/repositories/api_group_repository.dart';
import 'package:deforestation_detection/data/repositories/api_iot_repository.dart';
import 'package:deforestation_detection/data/services/api_login_service.dart';
import 'package:deforestation_detection/domain/entities/group.dart';
import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/domain/entities/suitable_position.dart';
import 'package:deforestation_detection/domain/entities/user.dart';
import 'package:deforestation_detection/domain/repositories/group_repository.dart';
import 'package:deforestation_detection/domain/repositories/iot_repository.dart';
import 'package:deforestation_detection/domain/services/login_service.dart';
import 'package:deforestation_detection/domain/use_cases/group/create_group_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/group/get_groups_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/change_iot_state_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/check_suitable_iot_position_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/create_iot_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/get_iots_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/iot/get_signaling_iots_use_case.dart';
import 'package:deforestation_detection/domain/use_cases/login/login_use_case.dart';
import 'package:deforestation_detection/presentation/blocs/groups/groups_bloc.dart';
import 'package:deforestation_detection/presentation/blocs/iots/iots_bloc.dart';
import 'package:deforestation_detection/presentation/blocs/login/login_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<ApiProvider>(() => ApiProvider());

  sl.registerLazySingleton<Factory<User, UserDto>>(() => UserFromDtoFactory());

  sl.registerLazySingleton<ApiAuthenticationGateWay>(
      () => ApiAuthenticationGateWay(sl.get()));
  sl.registerLazySingleton<LoginService>(
      () => ApiLoginService(sl.get(), sl.get()));
  sl.registerLazySingleton<LoginUseCase>(() => ApiLoginUseCase(sl.get()));
  sl.registerLazySingleton<LoginBloc>(() => LoginBloc(sl.get()));

  sl.registerLazySingleton<Factory<Group, GroupDto>>(
      () => GroupFromDtoFactory());
  sl.registerLazySingleton<ApiGroupGateWay>(() => ApiGroupGateWay(sl.get()));
  sl.registerLazySingleton<GroupRepository>(
      () => ApiGroupRepository(sl.get(), sl.get()));
  sl.registerLazySingleton<GetGroupsUseCase>(
      () => ApiGetGroupsUseCase(sl.get()));
  sl.registerLazySingleton<CreateGroupUseCase>(
      () => ApiCreateGroupUseCase(sl.get()));
  sl.registerLazySingleton<GroupsBloc>(() => GroupsBloc(sl.get(), sl.get()));

  sl.registerLazySingleton<Factory<Iot, IotDto>>(() => IotFromDtoFactory());
  sl.registerLazySingleton<Factory<IotDto, Iot>>(() => IotToDtoFactory());
  sl.registerLazySingleton<Factory<SuitablePosition, SuitablePositionDto>>(
      () => SuitablePositionFromDtoFactory());
  sl.registerLazySingleton<ApiIotGateWay>(() => ApiIotGateWay(sl.get()));
  sl.registerLazySingleton<IotRepository>(
      () => ApiIotRepository(sl.get(), sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<GetIotsUseCase>(() => ApiGetIotsUseCase(sl.get()));
  sl.registerLazySingleton<GetSignalingIotsUseCase>(
      () => ApiGetSignalingIotsUseCase(sl.get()));
  sl.registerLazySingleton<CheckSuitableIotPositionUseCase>(
      () => ApiCheckSuitableIotPositionUseCase(sl.get()));
  sl.registerLazySingleton<CreateIotUseCase>(
      () => ApiCreateIotUseCase(sl.get()));
  sl.registerLazySingleton<ChangeIotStateUseCase>(
      () => ApiChangeIotStateUseCase(sl.get()));
  sl.registerLazySingleton(
      () => IotsBloc(sl.get(), sl.get(), sl.get(), sl.get(), sl.get()));
}
