import 'package:datesapp/features/register/domain/entities/user_register.entity.dart';

abstract class RegisterUserRepository {
  Future<UserRegisterEntity?> register(String name, String email, String password);
}
