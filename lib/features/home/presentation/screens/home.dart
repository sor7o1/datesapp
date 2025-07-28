import 'package:datesapp/features/auth/presentation/pages/login_home.dart';
import 'package:datesapp/features/home/presentation/screens/bloc/home_bloc.dart';
import 'package:datesapp/features/register/presentation/screens/register.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void _onButtonPressed(int index, HomeBloc bloc) {
    bloc.add(ChangePage(index));
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            // final bloc = context.read<HomeBloc>();
            if (_pageController.hasClients && state is HomePageChangedState) {
              _pageController.animateToPage(
                state.pageIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
            return Stack(
              children: [
                // PageView detrás
                PageView(
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) =>
                      setState(() => _selectedIndex = index),
                  children: [LoginPage(), RegistroHome()],
                ),

                // // Botones encima
                // Positioned(
                //   top: size.height / 2 - 260, // Centrado verticalmente
                //   left: 0,
                //   right: 0,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       _buildTopButton('Login', 0),
                //       const SizedBox(width: 12),
                //       _buildTopButton('Registro', 1),
                //     ],
                //   ),
                // ),
              ],
            );
          },
        ),
      ),
    );
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
}
