import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:datesapp/features/auth/domain/usecases/login_user.dart';
import 'package:equatable/equatable.dart';

part 'loginuser_event.dart';
part 'loginuser_state.dart';

class LoginuserBloc extends Bloc<LoginuserEvent, LoginuserState> {
  final LoginUserUseCase loginUser;

  LoginuserBloc(this.loginUser) : super(LoginuserInitial()) {
    on<LoginuserEventLogin>((event, emit) async {
      emit(LoginuserLoading());
      try {
        // Espera el resultado real del login
        final result = await loginUser.executeLogin(event.email, event.password);

        // Simula un retardo si quieres (opcional)
        await Future.delayed(Duration(seconds: 2));

        if (result == null) {
          throw Exception('Login failed');
        }

        emit(LoginuserSuccess(message: 'Login successful for ${event.email}'));
      } catch (error) {
        emit(LoginuserFailure(error: error.toString()));
      }
    });
  }
}
