import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(top: 84.0, left: 20.0),
      color: BrandColors.swamp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Color.fromARGB(0, 255, 255, 255),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.person,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Профиль'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/profile');
              },
            ),
          ),
          const SizedBox(height: 30),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: const Color.fromARGB(0, 255, 255, 255),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Корзина'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/profile');
              },
            ),
          ),
          const SizedBox(height: 30),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: const Color.fromARGB(0, 255, 255, 255),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Избраное'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/favorite');
              },
            ),
          ),
          const SizedBox(height: 30),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: const Color.fromARGB(0, 255, 255, 255),
              child: const Row(
                children: [
                  Icon(
                    Icons.delivery_dining_outlined,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Заказы'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/favorite');
              },
            ),
          ),
          const SizedBox(height: 30),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: const Color.fromARGB(0, 255, 255, 255),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.bell,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Уведомления'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/notification');
              },
            ),
          ),
          const SizedBox(height: 30),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: const Color.fromARGB(0, 255, 255, 255),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.gear,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Настройки'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 38),

          const Divider(color: Color.fromRGBO(255, 255, 255, 0.231)),
          const SizedBox(height: 30),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: const Color.fromARGB(0, 255, 255, 255),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.back,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 27.0),
                  Text(
                    ('Выйти'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                Supabase.instance.client.auth.signOut();
                context.go('/onboarding');
              },
            ),
          ),
        ],
      ),
    );
  }
}
