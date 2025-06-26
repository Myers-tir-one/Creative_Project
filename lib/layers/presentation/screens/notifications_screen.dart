import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'У вас пока нет новых уведомлений',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
      ),
    );
  }
}
