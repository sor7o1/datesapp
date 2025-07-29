import 'package:datesapp/core/utils/theme/color_scheme.dart';
import 'package:datesapp/features/auth/data/datosource/login_datasource_impl.dart';
import 'package:datesapp/features/auth/data/repositories/login_repositorie_impl.dart';
import 'package:datesapp/features/auth/domain/usecases/login_user.dart';
import 'package:datesapp/features/auth/presentation/bloc/blocuser/loginuser_bloc.dart';
import 'package:datesapp/features/auth/presentation/pages/login_home.dart';
import 'package:datesapp/features/client/presentation/pages/client.home.page.dart';
import 'package:datesapp/features/home/presentation/screens/home.dart';
import 'package:datesapp/features/register/presentation/screens/register.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final authDataSource = LoginDatasourceImpl();
    final authRepositorie = LoginUserRepositoryImpl(
      authDataSource,
    ); // Assuming LoginUser is your authentication service
    final loginUser = LoginUserUseCase(authRepositorie);
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginuserBloc(loginUser))],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: CustomThemes.lightTheme,
        darkTheme: CustomThemes.darkTheme,
        themeMode: ThemeMode.system,
        home: LoginPage(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomeClientePage(),
          '/login': (context) => LoginPage(),
          '/register': (context) => const RegistroHome(),
        },
      ),
    );
  }
}
