import 'package:deforestation_detection/converters/factory.dart';
import 'package:deforestation_detection/data/models/user_dto.dart';
import 'package:deforestation_detection/domain/entities/user.dart';

class UserToDtoFactory implements Factory<UserDto, User> {
  @override
  UserDto create(User arg) {
    return UserDto(
      id: arg.id,
      email: arg.email,
      fullName: arg.fullName,
      role: arg.role,
    );
  }
}