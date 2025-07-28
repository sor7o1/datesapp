part of 'loginuser_bloc.dart';

sealed class LoginuserState extends Equatable {
  const LoginuserState();
  
  @override
  List<Object> get props => [];
}

final class LoginuserInitial extends LoginuserState {}


class LoginuserLoading extends LoginuserState {}

final class LoginuserSuccess extends LoginuserState {
  final String message;

  const LoginuserSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

final class LoginuserFailure extends LoginuserState {
  final String error;

  const LoginuserFailure({required this.error});

  @override
  List<Object> get props => [error];
}
