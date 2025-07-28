part of 'loginuser_bloc.dart';

sealed class LoginuserEvent extends Equatable {
  const LoginuserEvent();

  @override
  List<Object> get props => [];
}

class LoginuserEventLogin extends LoginuserEvent {
  final String email;
  final String password;

  const LoginuserEventLogin({
    required this.email,
    required this.password,
  });
}