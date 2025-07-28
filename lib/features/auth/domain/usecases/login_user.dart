import 'package:datesapp/features/auth/domain/entities/user.entitie.dart';
import 'package:datesapp/features/auth/domain/repositories/login_repositorie.dart';

class LoginUserUseCase {
  final LoginUserRepository repository;

  LoginUserUseCase(this.repository);

  Future<LoginUser?> executeLogin(String email, String password) {
    return repository.login(email, password);
  }
}
