import 'package:datesapp/features/auth/domain/entities/user.entitie.dart';

class LoginUserEntity {
  final String email;
  final String password;
  // otros campos

  LoginUserEntity({required this.email, required this.password});

  // Conversión a dominio
  LoginUser toDomain() => LoginUser(email: email, password: password);
}
