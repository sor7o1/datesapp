
import 'package:datesapp/features/register/data/datasource/registro.datasource_impl.dart';
import 'package:datesapp/features/register/data/models/register.model.dart';
import 'package:datesapp/features/register/domain/entities/user_register.entity.dart';
import 'package:datesapp/features/register/domain/repository.dart/reposotorie.dart';


class RegisterRepositoryImpl implements RegisterUserRepository {
  final RegisterDataSourceImpl dataSource;

  RegisterRepositoryImpl(this.dataSource);

@override
  Future<UserRegisterEntity?> register(String email, String password, String name) async {
    final userEntity = await dataSource.register(email, password,name);
    if (userEntity == null) return null;
    return userEntity.toDomain();
  }
}
