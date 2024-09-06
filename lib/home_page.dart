import 'package:flutter/material.dart';
import 'package:plant_app_ui/colors.dart';
import 'package:plant_app_ui/detailed_page1.dart';
import 'package:plant_app_ui/detailed_page2.dart';
import 'package:plant_app_ui/detailed_page3.dart';
import 'package:plant_app_ui/widgets/BoldText.dart';
import 'package:plant_app_ui/widgets/LightText.dart';
import 'package:plant_app_ui/widgets/tile1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // to Avoid Bottom Overflow Error
        resizeToAvoidBottomInset: false,

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/flower.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/heart-icon.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/user-icon.png'), label: ''),
        ]),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 200,
                    decoration: BoxDecoration(
                        color: MainColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/icons/menu.png'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: Row(
                      children: [
                        BoldText(
                          text: 'Hi Waleed!',
                          size: 28,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(
                              'assets/images/me.jpg',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 160, left: 23, right: 23),
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: LightText(
                                    text: 'Search',
                                    color: MainColor.withOpacity(0.5),
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset('assets/icons/search.png'),
                          )
                        ],
                      ),
                      width: double.maxFinite,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: MainColor.withOpacity(0.3),
                              offset: Offset(0, 10),
                              blurRadius: 20,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        BoldText(text: 'Recomended'),
                        Spacer(),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              color: MainColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: BoldText(
                            text: 'More',
                            size: 18,
                            color: Colors.white,
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 20),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedPage2(),));
                          },
                          child: Tile1(
                            ImagePath: 'assets/images/image_1.png',
                            Price: '\$340',
                            Name: 'SAMANTHA',
                            Country: 'RUSSIA',
                          ),
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedPage(),));
                          },
                          child: Tile1(
                            ImagePath: 'assets/images/abc.png',
                            Price: '\$400',
                            Name: 'ANGELICA',
                            Country: 'PAKISTAN',
                          ),
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedPage3(),));
                          },
                          child: Tile1(
                            ImagePath: 'assets/images/image_3.png',
                            Price: '\$290',
                            Name: 'ROMANSIA',
                            Country: 'INDIA',
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        BoldText(text: 'Featured Plants'),
                        Spacer(),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              color: MainColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: BoldText(
                            text: 'More',
                            size: 18,
                            color: Colors.white,
                          )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: double.maxFinite,
                      height: 200,
                      decoration: BoxDecoration(),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 20,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/bottom_img_1.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/bottom_img_2.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
