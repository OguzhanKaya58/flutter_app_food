import 'dart:ui';
import 'package:flutter/services.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/AllFoods/all_dessert.dart';
import 'package:flutter_app_food/AllFoods/all_foods.dart';
import 'package:flutter_app_food/AllFoods/all_rices.dart';
import 'package:flutter_app_food/AllFoods/all_soup.dart';

import 'package:flutter_app_food/monthly/July.dart';
import 'package:flutter_app_food/monthly/december.dart';
import 'package:flutter_app_food/monthly/february.dart';
import 'package:flutter_app_food/monthly/january.dart';
import 'package:flutter_app_food/monthly/october.dart';
import 'package:flutter_app_food/monthly/april.dart';
import 'package:flutter_app_food/monthly/august.dart';
import 'package:flutter_app_food/monthly/june.dart';
import 'package:flutter_app_food/monthly/march.dart';
import 'package:flutter_app_food/monthly/may.dart';
import 'package:flutter_app_food/monthly/november.dart';
import 'package:flutter_app_food/monthly/september.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/bottom_navy_bar.dart';

class Months extends StatefulWidget {
  @override
  _MonthsState createState() => _MonthsState();
}

class _MonthsState extends State<Months> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        backgroundColor: kPrimaryLightColor,
        containerHeight: size.height / 15,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Image.asset(
                "icon/food_icon.png",
                fit: BoxFit.fill,
                width: size.width / 24,
                color: monthsTextColor,
              ),
              title: GestureDetector(
                child: Text(
                  'Ana\nYemekler',
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AllFood())),
              ),
              activeColor: whiteColor,
              textAlign: TextAlign.center,
              inactiveColor: monthsTextColor),
          BottomNavyBarItem(
              icon: Image.asset(
                "icon/rice-icon.png",
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                color: monthsTextColor,
                width: size.width / 24,
              ),
              title: GestureDetector(
                child: Text(
                  'Ara\nSıcaklar',
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AllRice())),
              ),
              activeColor: whiteColor,
              textAlign: TextAlign.center,
              inactiveColor: monthsTextColor),
          BottomNavyBarItem(
              icon: Image.asset(
                "icon/soup_icon.png",
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                color: monthsTextColor,
                width: size.width / 24,
              ),
              title: GestureDetector(
                child: Text(
                  'Çorbalar',
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AllSoup())),
              ),
              activeColor: whiteColor,
              textAlign: TextAlign.center,
              inactiveColor: monthsTextColor),
          BottomNavyBarItem(
              icon: Image.asset(
                "icon/dessert_icon.png",
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                color: monthsTextColor,
                width: size.width / 24,
              ),
              title: GestureDetector(
                child: Text(
                  'Tatlılar',
                ),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AllDessert())),
              ),
              activeColor: whiteColor,
              textAlign: TextAlign.center,
              inactiveColor: monthsTextColor),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, kPrimaryLightColor]),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => January())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 5.1,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          image: DecorationImage(
                            image: AssetImage("images/ocak.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          child: Text("OCAK",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => February())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/subat.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("ŞUBAT",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => March())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/mart.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("MART",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => April())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/nisan.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("NİSAN",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => May())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/mayis.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("MAYIS",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => June())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/haziran.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("HAZİRAN",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => July())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/temmuz.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("TEMMUZ",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => August())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/agustos.png"),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter)),
                        child: Container(
                          child: Text("AĞUSTOS",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => September())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/eylül.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("EYLÜL",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => October())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/ekim.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("EKİM",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => November())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/kasım.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("KASIM",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => December())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.9,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/aralik.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("ARALIK",
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              )),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
