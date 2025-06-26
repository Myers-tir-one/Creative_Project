import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen1.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen2.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen3.dart';


class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF8B0000), Color.fromARGB(255, 255, 145, 0), Color(0xFF003366)],
          ),
        ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: BrandColors.block,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () => context.go('/shope'),
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),
              Text(
                context.tr('Избранное'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: BrandColors.block,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.heart, size: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(6),
              children: [
              CardScreen(), CardScreen1(), 
              CardScreen2(), CardScreen3(),
              CardScreen(), CardScreen1(), 
              CardScreen2(), CardScreen3(),
              CardScreen(), CardScreen1(), 
              CardScreen2(), CardScreen3()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
