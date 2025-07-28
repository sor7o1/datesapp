import 'package:datesapp/features/auth/domain/entities/user.entitie.dart';

abstract class LoginUserRepository {
  Future<LoginUser?> login(String email, String password);
}
