import 'package:flutter/material.dart';

import '../colors.dart';
class Tile2 extends StatelessWidget {
   Tile2({super.key,required this.IconPath});

  String IconPath;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 62,
      width: 59,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: MainColor.withOpacity(0.2),
                blurRadius: 20,
                offset: Offset(0, 10)
            )
          ],
          borderRadius: BorderRadius.circular(14)
      ),
      child: Image.asset(IconPath),
    );
  }
}
