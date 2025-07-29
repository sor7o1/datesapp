class UserRegisterEntity {
  final String name;
  final String email;
  final String password;

  UserRegisterEntity({
    required this.password,
    required this.name,
    required this.email,
  });

  UserRegisterEntity toDomain() =>
      UserRegisterEntity(email: email, password: password, name: name);
}
