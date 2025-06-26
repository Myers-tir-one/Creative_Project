// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:matule/core/helpers/brand_colors.dart';
// import 'package:matule/layers/presentation/shared/cards/card_screen3.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:matule/layers/presentation/shared/cards/card_screen1.dart';
// import 'package:matule/layers/presentation/shared/cards/card_screen2.dart';



// class Krosi1Screen extends StatefulWidget {
//   const Krosi1Screen({super.key});

//     @override
//   State<Krosi1Screen> createState() => _Krosi1ScreenState();
// }

// class _Krosi1ScreenState extends State<Krosi1Screen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: BrandColors.background,
//       padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//            IconButton(
//               icon: Icon(
//                 CupertinoIcons.back,
//                 color: BrandColors.text,
//                 size: 20,
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             Container(
//               height: 400,
//               width: 1200,
//           decoration: BoxDecoration(
//             color: BrandColors.block,
//             borderRadius: BorderRadius.circular(8),
//           ),
//               child: Image.asset('assets/целеус.png'),
//         ),
//         Text(
//               ('Очки профессионального оценщика'),
//               style: TextStyle(
//                 fontSize: 35,
//                 color: Color.fromARGB(204, 0, 0, 0),
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Text(
//               ('1488.42 P'),
//               style: GoogleFonts.aBeeZee(
//                 fontSize: 35,
//                 color: Color.fromARGB(204, 0, 0, 0),
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 50,
//               decoration: BoxDecoration(),
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children:
//                 [
//                 Image.asset(width: 80,'assets/целеус.png'),
//                 Image.asset(width: 80,'assets/целеус.png'), 
//                 Image.asset(width: 80,'assets/целеус.png'),
//                 Image.asset(width: 80,'assets/целеус.png'),
//                 Image.asset(width: 80,'assets/целеус.png'),
//                 Image.asset(width: 80,'assets/целеус.png'),
//                 Image.asset(width: 80,'assets/целеус.png'),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               ('Может вам понравится'),
//               style: GoogleFonts.arOneSans(
//                 fontSize: 18,
//                 color: BrandColors.text,
//                 fontWeight: FontWeight.w700,
//               ),
//               ),
//             SizedBox(height: 20),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 children: [CardScreen2(), CardScreen1(), CardScreen3()],
//               ),
//             ),
//        ]
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen1.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen2.dart';

class Krosi1Screen extends StatefulWidget {
  const Krosi1Screen({super.key});

  @override
  State<Krosi1Screen> createState() => _Krosi1ScreenState();
}

class _Krosi1ScreenState extends State<Krosi1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.background,
      body: SingleChildScrollView( // Добавляем прокрутку
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.back,
                color: BrandColors.text,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 400,
              width: double.infinity, // Заменяем на double.infinity для адаптивности
              decoration: BoxDecoration(
                color: BrandColors.block,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset('assets/целеус.png', fit: BoxFit.cover), // Устанавливаем fit для корректного отображения
            ),
            SizedBox(height: 10), // Добавляем отступ
            Text(
              'Очки профессионального оценщика',
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(204, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '1488.42 P',
              style: GoogleFonts.aBeeZee(
                fontSize: 35,
                color: Color.fromARGB(204, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(width: 80, 'assets/целеус.png'),
                  Image.asset(width: 80, 'assets/целеус.png'),
                  Image.asset(width: 80, 'assets/целеус.png'),
                  Image.asset(width: 80, 'assets/целеус.png'),
                  Image.asset(width: 80, 'assets/целеус.png'),
                  Image.asset(width: 80, 'assets/целеус.png'),
                  Image.asset(width: 80, 'assets/целеус.png'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Может вам понравится',
              style: GoogleFonts.arOneSans(
                fontSize: 18,
                color: BrandColors.text,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true, // Устанавливаем shrinkWrap для GridView
              physics: NeverScrollableScrollPhysics(), // Отключаем прокрутку GridView
              children: [CardScreen2(), CardScreen1(), CardScreen3()],
            ),
          ],
        ),
      ),
    );
  }
}