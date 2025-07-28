import 'package:datesapp/features/auth/data/models/login.model.dart';

abstract class LoginDatasource {
  Future<LoginUserEntity?> login(String email, String password);
}
