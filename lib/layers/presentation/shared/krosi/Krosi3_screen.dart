// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:matule/core/helpers/brand_colors.dart';
// import 'package:matule/layers/presentation/shared/cards/card_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:matule/layers/presentation/shared/cards/card_screen1.dart';
// import 'package:matule/layers/presentation/shared/cards/card_screen2.dart';



// class KrosiScreen3 extends StatefulWidget {
//   const KrosiScreen3({super.key});

//     @override
//   State<KrosiScreen3> createState() => _KrosiScreenState();
// }

// class _KrosiScreenState extends State<KrosiScreen3> {
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
//               child: Image.asset(
//                 height: 400,
//                 width: 1200,
//                'assets/опасный.png'
//                ),
//         ),
//         Text(
//               ('Опасные штанишки'),
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
//                 children: [
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   Image.asset(width: 80,'assets/опасный.png'),
//                   ],
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
//                 children: [CardScreen(), CardScreen1(), CardScreen2()],
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
import 'package:matule/layers/presentation/shared/cards/card_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen1.dart';
import 'package:matule/layers/presentation/shared/cards/card_screen2.dart';

class KrosiScreen3 extends StatefulWidget {
  const KrosiScreen3({super.key});

  @override
  State<KrosiScreen3> createState() => _KrosiScreenState();
}

class _KrosiScreenState extends State<KrosiScreen3> {
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
              child: Image.asset(
                'assets/опасный.png',
                fit: BoxFit.cover, // Устанавливаем fit для корректного отображения
              ),
            ),
            SizedBox(height: 10), // Добавляем отступ
            Text(
              'Опасные штанишки',
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
                  Image.asset(width: 80, 'assets/опасный.png'),
                  Image.asset(width: 80, 'assets/опасный.png'),
                  Image.asset(width: 80, 'assets/опасный.png'),
                  Image.asset(width: 80, 'assets/опасный.png'),
                  Image.asset(width: 80, 'assets/опасный.png'),
                  Image.asset(width: 80, 'assets/опасный.png'),
                  Image.asset(width: 80, 'assets/опасный.png'),
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
              children: [CardScreen(), CardScreen1(), CardScreen2()],
            ),
          ],
        ),
      ),
    );
  }
}