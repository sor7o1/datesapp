
import 'package:datesapp/features/register/data/datasource/registro.datasource.dart';
import 'package:datesapp/features/register/data/models/register.model.dart';
import 'package:datesapp/features/register/domain/entities/user_register.entity.dart';

class RegisterDataSourceImpl implements RegisterDataSource {
  @override
  Future<UserRegisterEntity?> register(String email, String password, String name) async {
    // Simulación o llamada real a API/DB
    await Future.delayed(Duration(seconds: 1));
  }
}
