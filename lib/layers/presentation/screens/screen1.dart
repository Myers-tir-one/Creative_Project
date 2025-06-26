import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                Image.asset('assets/team.png'),
                SizedBox(height: 20),
                Text(
                  'ДОБРО ПОЖАЛОВАТЬ',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 255, 255, 255),
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
                  onPressed: () => context.go('/gg'),
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
