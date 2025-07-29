import 'package:datesapp/features/register/domain/entities/user_register.entity.dart';

class UserRegistroModel extends UserRegisterEntity {
  UserRegistroModel({
    required String super.email,
    required String super.password,
    required String super.name,
  });


  UserRegisterEntity toDomain() =>
      UserRegisterEntity(email: email, password: password, name: name);
}
