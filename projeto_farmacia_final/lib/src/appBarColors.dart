import 'package:flutter/material.dart';

class AppBarGradient extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xFFffE62C00),
            //Color(0xFFffA9003C),
            Color(0xFFffADD8E6)
          ],
          tileMode: TileMode.clamp
        )
      ),
    );
  }
}