import 'package:deforestation_detection/converters/entities/user_from_dto_factory.dart';
import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/gateways/api_authentication_gateway.dart';
import 'package:deforestation_detection/data/gateways/api_provider.dart';
import 'package:deforestation_detection/data/models/user_dto.dart';
import 'package:deforestation_detection/data/services/api_login_service.dart';
import 'package:deforestation_detection/domain/entities/user.dart';
import 'package:deforestation_detection/domain/services/login_service.dart';
import 'package:deforestation_detection/domain/use_cases/login/login_use_case.dart';
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
}
