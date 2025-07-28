import 'package:datesapp/features/home/presentation/screens/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistroHome extends StatefulWidget {
  const RegistroHome({super.key});

  @override
  State<RegistroHome> createState() => _RegistroHomeState();
}

class _RegistroHomeState extends State<RegistroHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // Para evitar overflow en teclados
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 79),
              const Icon(
                Icons.app_registration,
                size: 72,
                color: Colors.redAccent,
              ),
              const SizedBox(height: 20),
              const Text(
                'Crear cuenta',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Nombres
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre completo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 20),

              // Correo
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

              // Botón de registro
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Aquí puedes manejar el registro
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Registrarse'),
                ),
              ),

              const SizedBox(height: 10),

              // ¿Ya tienes cuenta?
              TextButton(
                onPressed: () {
                  final homeBloc = context.read<HomeBloc>();
                  homeBloc.add(ChangePage(0));
                },
                child: const Text('¿Ya tienes cuenta? Inicia sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
