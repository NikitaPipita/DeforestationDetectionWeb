import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/models/user_dto.dart';
import 'package:deforestation_detection/domain/entities/user.dart';

class UserFromDtoFactory implements Factory<User, UserDto> {
  @override
  User create(UserDto arg) {
    return User(
      id: arg.id,
      email: arg.email,
      fullName: arg.fullName,
      role: arg.role,
    );
  }
}
