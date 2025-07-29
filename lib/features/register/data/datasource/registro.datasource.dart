
import 'package:datesapp/features/register/data/models/register.model.dart';
import 'package:datesapp/features/register/domain/entities/user_register.entity.dart';

abstract class RegisterDataSource {
  Future<UserRegisterEntity?> register(String email, String password, String name);
}
