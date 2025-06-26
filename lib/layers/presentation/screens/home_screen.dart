import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen1.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen3.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen2.dart';
import 'package:matule/layers/presentation/shared/ui/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              BrandColors.home2,
              BrandColors.home1,
              BrandColors.home
            ],
          ),
        ),
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                onPressed: () => context.go('/basket'),
                icon: Icon(CupertinoIcons.bag),
                alignment: Alignment.topRight,
              ),
              SizedBox(
                  child: 
                    Text(
                      'SkinSHOP',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.blackOpsOne(
                        fontSize: 56,
                      ),
                    ),
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 330,
                    height: 57,
                    child: Column(children: [SearchField()]),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => context.go('/cros'),
                child: Text(
                  context.tr('Все'),
                  style: GoogleFonts.bungee(fontSize: 15, color: BrandColors.block, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Может вам понравится',
                style: GoogleFonts.bungee(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 0),
              Padding(padding: EdgeInsets.all(11)),
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true, // Устанавливаем shrinkWrap для GridView
                physics: NeverScrollableScrollPhysics(), // Отключаем прокрутку GridView
                children: [
                CardScreen(), CardScreen1(), 
                CardScreen2(), CardScreen3(),
                CardScreen(), CardScreen1(), 
                CardScreen2(), CardScreen3(),
                CardScreen(), CardScreen1(), 
                CardScreen2(), CardScreen3()
                ],
              ),
              SizedBox(
                height: 190,
                width: 12,
                child: Image.asset(fit: BoxFit.fill, 'assets/banner.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                    width: 8,
                  ),
                  gradient:  LinearGradient(
                    colors: [Color(0xFF8B0000), Color(0xFFFFD700), Color(0xFF003366)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Text(
                      'ABOUT SKINSHOP',
                      style: GoogleFonts.blackOpsOne(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '"Официальный маркетплейс скинов "Команда Ограждения 2" от создателей маркетплейса "Контрольный гол 2" "',
                      style: GoogleFonts.blackOpsOne(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '© 1968-2023 SkinShop | "Мы делаем это, потому что можем"',
                      style: GoogleFonts.blackOpsOne(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}