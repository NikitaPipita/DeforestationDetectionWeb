import 'package:deforestation_detection/domain/entities/user.dart';

abstract class LoginService {
  Future<User> authentication(String email, String password);
}