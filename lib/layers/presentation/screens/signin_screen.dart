import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/ui/password_field.dart';
import 'package:matule/layers/presentation/shared/ui/email_field.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> _launchSteamLogin() async {
    const url = 'https://steamcommunity.com/login';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
  
class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15),
            Text(
              context.tr('Привет!'),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              context.tr(
                'Заполните Свои данные или продолжите через социальные медиа',
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(204, 83, 83, 83),
              ),
            ),
            SizedBox(height: 60),
            Text(
              context.tr('email'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: EmailField(),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('Пароль'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: PasswordField(),
            ),
            GestureDetector(
              onTap: () => context.go('/da'),
              child: Text(
                context.tr('Востановить'),
                style: TextStyle(fontSize: 15, color: BrandColors.subTextDark),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(100),
              color: BrandColors.swamp,
              onPressed: () => context.go('/shope'),
              child: Text(
                context.tr('sign_in'),
                style: TextStyle(color: BrandColors.textLight),
              ),
            ),
            SizedBox(
              height: 56,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
              onPressed: _launchSteamLogin,
              icon: Icon(Icons.sports_esports, size: 24),
              label: Text(
              'Sign in with Steam',
              style: TextStyle(fontSize: 16)
              ),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 79, 88, 116),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
              color:  Color(0xFF66c0f4),
              ),
            ),
            elevation: 4,
            shadowColor: Colors.black,
            ),
            ),
          ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.tr('Вы впервые?'),
                      style: TextStyle(color: BrandColors.text),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => context.push('/aaa'),
                      child: Text(
                        context.tr('Создать пользователя'),
                        style: TextStyle(color: BrandColors.subTextDark),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
