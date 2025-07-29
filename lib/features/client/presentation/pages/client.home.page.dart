import 'package:datesapp/features/client/presentation/pages/widgets/Appbar.dart';
import 'package:datesapp/features/client/presentation/pages/widgets/ButtonSearch.dart';
import 'package:datesapp/features/client/presentation/pages/widgets/DetailBusiness.dart';
import 'package:datesapp/features/client/presentation/pages/widgets/DetailCategorie.dart';
import 'package:datesapp/features/client/presentation/pages/widgets/UserDetail.dart';
import 'package:flutter/material.dart';

class HomeClientePage extends StatefulWidget {
  final String userName;
  final String userPhotoUrl;
  final String currentAddress;

  HomeClientePage({
    this.userName = 'Usuario Ejemplo',
    this.userPhotoUrl =
        'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
    this.currentAddress = 'Av. Principal #123, Ciudad',
  });

  @override
  State<HomeClientePage> createState() => _HomeClientePageState();
}

class _HomeClientePageState extends State<HomeClientePage> {
  late PageController _pageController;

  final List<Map<String, String>> salons = [
    {
      'name': 'Salón Glam',
      'image':
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=800&q=60',
      'address': 'Calle 5 #123',
      'phone': '+504 1111 2222',
    },
    {
      'name': 'Peluquería Style',
      'image':
          'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?auto=format&fit=crop&w=800&q=60',
      'address': 'Av. Central 456',
      'phone': '+504 3333 4444',
    },
    {
      'name': 'Beauty Pro',
      'image':
          'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?auto=format&fit=crop&w=800&q=60',
      'address': 'Boulevard Las Palmas',
      'phone': '+504 5555 6666',
    },
  ];

  final List<Map<String, String>> categories = [
    {
      'name': 'Corte',
      'image': 'https://img.icons8.com/color/96/000000/hair-cut.png',
    },
    {
      'name': 'Manicure',
      'image': 'https://img.icons8.com/color/96/000000/nail-polish.png',
    },
    {
      'name': 'Peinado',
      'image': 'https://img.icons8.com/color/96/000000/hairdresser.png',
    },
    {
      'name': 'Tinte',
      'image': 'https://img.icons8.com/color/96/000000/hair-dye.png',
    },
    {
      'name': 'Masajes',
      'image': 'https://img.icons8.com/color/96/000000/massage.png',
    },
  ];

  @override
  void initState() {
    super.initState();
    // Empieza en el índice 2 (tercer elemento), que será centrado
    _pageController = PageController(
      viewportFraction: 0.33,
      initialPage: categories.length ~/ 3,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(widget.userName, widget.userPhotoUrl),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner con datos usuario (con Stack)
            DetailUser(
              widget.userPhotoUrl,
              widget.userName,
              widget.currentAddress,
            ),

            SizedBox(height: 16),

            // Dirección actual
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.currentAddress,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 20),

            // PageView horizontal con avatares de salones
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: PageView.builder(
                controller: _pageController,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Seleccionaste ${category['name']}'),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DetailCategorie(
                            category['name']!,
                            category['image']!,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            category['name']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // SizedBox(height: 24),

            // Botón buscar salones
            Center(child: ButtonSearch()),

            SizedBox(height: 24),

            // Lista vertical con todos los salones
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Todos los negocios',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  // color: Colors.pinkAccent,
                ),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: salons.length,
              itemBuilder: (context, index) {
                final salon = salons[index];
                return DetailBusiness(salon);
              },
            ),

            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
