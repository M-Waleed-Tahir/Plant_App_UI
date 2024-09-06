import 'package:flutter/material.dart';
import 'package:plant_app_ui/widgets/BoldText.dart';
import 'package:plant_app_ui/widgets/LightText.dart';
import 'package:plant_app_ui/widgets/tile2.dart';

import 'colors.dart';
import 'home_page.dart';

class DetailedPage2 extends StatelessWidget {
  const DetailedPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                ///First Column

                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8, right: 10),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: Offset(-14, 0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/icons/back_arrow.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: 72),
                      Tile2(IconPath: 'assets/icons/sun.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Tile2(IconPath: 'assets/icons/icon_2.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Tile2(IconPath: 'assets/icons/icon_3.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Tile2(IconPath: 'assets/icons/icon_4.png'),
                    ],
                  ),
                ),

                SizedBox(
                  width: 17,
                ),

                ///Second Column

                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 314,
                          height: 550,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/image_1.png')),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(70),
                                topLeft: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: MainColor.withOpacity(0.2),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ///1st column

                Column(
                  children: [
                    Transform.translate(
                      offset: Offset(10, 0),
                      child: BoldText(
                        text: 'Samantha',
                        size: 40,
                      ),
                    ),
                    LightText(
                      text: 'Russia',
                      color: MainColor.withOpacity(0.6),
                    ),
                    SizedBox(
                      height: 112,
                    ),
                    Container(
                      width: 183,
                      height: 70,
                      decoration: BoxDecoration(
                          color: MainColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30))),
                      child: Center(
                          child: BoldText(
                            text: 'Buy Now',
                            color: Colors.white,
                            size: 27,
                          )),
                    ),
                  ],
                ),


                SizedBox(
                  height: 24,
                ),

                ///2nd Column

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: BoldText(
                        text: '\$340',
                        color: MainColor,
                        size: 34,
                      ),
                    ),
                    SizedBox(
                      height: 149,
                    ),
                    Container(
                      width: 211,
                      height: 70,
                      child: Center(
                          child: BoldText(
                            text: 'Description',
                            size: 23,
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
