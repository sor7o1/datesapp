import 'package:datesapp/features/auth/data/datosource/login_datasource.dart';
import 'package:datesapp/features/auth/data/models/login.model.dart';

class LoginDatasourceImpl implements LoginDatasource {
  @override
  Future<LoginUserEntity?> login(String email, String password) async {
    // Lógica de llamada a API / BD, etc.
    // Retorna LoginUserEntity o null si falla
  }
}
