import 'package:datesapp/features/register/data/models/register.model.dart';
import 'package:datesapp/features/register/domain/entities/user_register.entity.dart';
import 'package:datesapp/features/register/domain/repository.dart/reposotorie.dart';

class RegisterUser {
  final RegisterUserRepository repository;

  RegisterUser(this.repository);

  Future<UserRegisterEntity?> executeRegister(
    String name,
    String email,
    String password,
  ) async {
    final user = UserRegisterEntity(
      name: name,
      email: email,
      password: password,
    );
    return await repository.register(name, email, password);
  }
}
