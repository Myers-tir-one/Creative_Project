import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  BrandColors.gradient,
                  BrandColors.gradient1,
                  BrandColors.gradient2,
                  BrandColors.gradient3,
                  BrandColors.gradient4,
                  BrandColors.gradient5,
                  BrandColors.gradient6,
                  BrandColors.gradient7,
                  BrandColors.gradient2,
                  BrandColors.gradient3,
                  BrandColors.gradient4,
                  BrandColors.gradient8,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
                ),
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/team2.png'),
                SizedBox(height: 20),
                Text(
                  'Спасибо что выбираете нас!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadows: [
                      Shadow(
                        color: Colors.black, // Цвет тени
                        offset: Offset(2.0, 2.0), // Смещение тени
                        blurRadius: 4.0, // Радиус размытия
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => context.go('/visol'),
                  child: Text('Начать'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
