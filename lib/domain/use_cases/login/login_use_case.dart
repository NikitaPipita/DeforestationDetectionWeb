import 'package:deforestation_detection/domain/entities/user.dart';
import 'package:deforestation_detection/domain/services/login_service.dart';

abstract class LoginUseCase {
  Future<User> login(String email, String password);
}

class ApiLoginUseCase implements LoginUseCase {
  final LoginService _loginService;

  ApiLoginUseCase(
    this._loginService,
  );

  @override
  Future<User> login(String email, String password) =>
      _loginService.authentication(email, password);
}
