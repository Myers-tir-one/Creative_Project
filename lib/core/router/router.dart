import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/basket_screen.dart';
import 'package:matule/layers/presentation/screens/build_screen.dart';
import 'package:matule/layers/presentation/screens/email_screen.dart';
import 'package:matule/layers/presentation/screens/no_password_srceen.dart';
import 'package:matule/layers/presentation/screens/notifications_screen.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/screens/popular_screen.dart';
import 'package:matule/layers/presentation/screens/profile_screen.dart';
import 'package:matule/layers/presentation/screens/registr_screen.dart';
import 'package:matule/layers/presentation/screens/screen1.dart';
import 'package:matule/layers/presentation/screens/screen2.dart';
import 'package:matule/layers/presentation/screens/screen3.dart';
import 'package:matule/layers/presentation/screens/signin_screen.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ZoomDrawer(
            controller: ZoomDrawerController(),
            menuScreen: Container(),
            mainScreen: BuildScreen(navigationShell: navigationShell),
            borderRadius: 24.0,
            showShadow: true,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/shope',
                builder: (context, state) => HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/cros',
                builder: (context, state) => PopularScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/noti',
                builder: (context, state) => Notifications(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => ProfileScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/basket',
                builder: (context, state) => BasketScreen(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(path: '/', builder: (context, state) => Screen1()),
      GoRoute(path: '/gg', builder: (context, state) => Screen2()),
      GoRoute(path: '/ggg', builder: (context, state) => Screen3()),
      GoRoute(path: '/visol', builder: (context, state) => SigninScreen()),
      GoRoute(path: '/da', builder: (context, state) => NoPasswordSrceen()),
      GoRoute(path: '/aaa', builder: (context, state) => RegistrScreen()),
      GoRoute(path: '/mail', builder: (context, state) => EmailScreen()),
    ],
  );
}

class SigninClass {}
