import 'package:datesapp/features/auth/data/datosource/login_datasource.dart';
import 'package:datesapp/features/auth/domain/entities/user.entitie.dart';
import 'package:datesapp/features/auth/domain/repositories/login_repositorie.dart';

class LoginUserRepositoryImpl implements LoginUserRepository {
  final LoginDatasource datasource;

  LoginUserRepositoryImpl(this.datasource);

  @override
  Future<LoginUser?> login(String email, String password) async {
    final userEntity = await datasource.login(email, password);
    if (userEntity == null) return null;
    return userEntity.toDomain();
  }
}
