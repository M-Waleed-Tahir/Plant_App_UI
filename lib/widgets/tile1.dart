import 'package:flutter/material.dart';
import '../colors.dart';
import 'BoldText.dart';

class Tile1 extends StatelessWidget {
   Tile1({super.key,required this.ImagePath,required this.Price,required this.Name,required this.Country});

  String ImagePath;
  String Price;
  String Name;
  String Country;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 280,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: MainColor.withOpacity(0.2),
                blurRadius: 20
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImagePath)),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
            ),

          ),

          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 5),
            child: Row(
              children: [
                BoldText(text: Name,size: 18,),

                Spacer(),

                BoldText(text: Price,color: MainColor)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: BoldText(text: Country,size: 17,color: MainColor.withOpacity(0.4),),
          )
        ],
      ),
    );
  }
}
