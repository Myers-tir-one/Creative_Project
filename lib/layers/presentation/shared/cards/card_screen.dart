import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/shared/krosi/krosi1_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Krosi1Screen()),
        );
      },
      child:  Stack(
      children: <Widget>[
        Container(
          width: 175,
          height: 175,
          padding: EdgeInsets.only(top: 12, left: 8, bottom: 12, right: 6),
          decoration: BoxDecoration(
            color: BrandColors.block,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),

        Positioned(
          left: 10,
          top: 10,
          right: 10,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/целеус.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 10,
          child: Text(
            'Очки оценщика',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: BrandColors.subTextDark,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 10,
          child: Text(
            'Р1488.42',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: BrandColors.text,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: BrandColors.background,
              borderRadius: BorderRadius.circular(100.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: BrandColors.red,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          top: 128,
          left: 123,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: BrandColors.swamp,
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.add,
                color: BrandColors.block,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    ),
    );
  }
}
