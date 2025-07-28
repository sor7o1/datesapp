// lib/features/login/presentation/pages/login_page.dart
import 'package:datesapp/features/home/presentation/screens/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:datesapp/features/auth/presentation/bloc/blocuser/loginuser_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController userCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // Para evitar overflow al abrir teclado
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.login, size: 72, color: Colors.redAccent),
              const SizedBox(height: 20),
              const Text(
                'Iniciar sesión',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),

              // Contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 30),

              // Botón de login
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica de login aquí
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Iniciar sesión'),
                ),
              ),

              const SizedBox(height: 10),

              // ¿No tienes cuenta?
              TextButton(
                onPressed: () {
                  final homeBloc = context.read<HomeBloc>();
                  homeBloc.add(ChangePage(1));
                },
                child: const Text('¿No tienes cuenta? Regístrate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
