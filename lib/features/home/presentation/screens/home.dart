import 'package:datesapp/features/auth/presentation/pages/login_home.dart';
import 'package:datesapp/features/register/presentation/screens/register.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  void _goToPage(int index) {
    setState(() {
      _selectedIndex = index;
    });

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // PageView detrás
          PageView(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) => setState(() => _selectedIndex = index),
            children: [LoginPage(), RegistroHome()],
          ),

          // Botones encima
          Positioned(
            top: size.height / 2 - 260, // Centrado verticalmente
            left: 0,
            right: 0,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTopButton('Login', 0),
                const SizedBox(width: 12),
                _buildTopButton('Registro', 1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopButton(String title, int index) {
    final isSelected = _selectedIndex == index;
    return ElevatedButton(
      onPressed: () => _goToPage(index),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.redAccent : Colors.grey[300],
        foregroundColor: isSelected ? Colors.white : Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(title),
    );
  }
}

Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0); // Desde derecha a izquierda
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
