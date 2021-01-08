import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/menu/eightMenu.dart';
import 'package:flutter_app_food/menu/eighteenMenu.dart';
import 'package:flutter_app_food/menu/elevenMenu.dart';
import 'package:flutter_app_food/menu/fifteenMenu.dart';
import 'package:flutter_app_food/menu/fiveMenu.dart';
import 'package:flutter_app_food/menu/fourMenu.dart';
import 'package:flutter_app_food/menu/fourteenMenu.dart';
import 'package:flutter_app_food/menu/nineMenu.dart';
import 'package:flutter_app_food/menu/nineteenMenu.dart';
import 'package:flutter_app_food/menu/oneMenu.dart';
import 'package:flutter_app_food/menu/sevenMenu.dart';
import 'package:flutter_app_food/menu/seventeenMenu.dart';
import 'package:flutter_app_food/menu/sixMenu.dart';
import 'package:flutter_app_food/menu/sixteenMenu.dart';
import 'package:flutter_app_food/menu/tenMenu.dart';
import 'package:flutter_app_food/menu/thirteenMenu.dart';
import 'package:flutter_app_food/menu/thirtyMenu.dart';
import 'package:flutter_app_food/menu/thirtyOneMenu.dart';
import 'package:flutter_app_food/menu/threeMenu.dart';
import 'package:flutter_app_food/menu/twelveMenu.dart';
import 'package:flutter_app_food/menu/twentyEightMenu.dart';
import 'package:flutter_app_food/menu/twentyFiveMenu.dart';
import 'package:flutter_app_food/menu/twentyFourMenu.dart';
import 'package:flutter_app_food/menu/twentyMenu.dart';
import 'package:flutter_app_food/menu/twentyNineMenu.dart';
import 'package:flutter_app_food/menu/twentyOneMenu.dart';
import 'package:flutter_app_food/menu/twentySevenMenu.dart';
import 'package:flutter_app_food/menu/twentySixMenu.dart';
import 'package:flutter_app_food/menu/twentyThreeMenu.dart';
import 'package:flutter_app_food/menu/twentyTwoMenu.dart';
import 'package:flutter_app_food/menu/twoMenu.dart';
import 'package:flutter_app_food/monthly/november.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/weak.dart';

class October extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
            padding: EdgeInsets.only(right: 20),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => November()));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 24,
              ),
              Text(
                "Ekim",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: whiteColor),
              ),
              Weak(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OneMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TwoMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ThreeMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 48,
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FourMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FiveMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SixMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "6",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SevenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => EightMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "8",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NineMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "9",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "10",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ElevenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "11",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwelveMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "12",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirteenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "13",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FourteenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "14",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FifteenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "15",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SixteenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "16",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SeventeenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "17",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EighteenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "18",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NineteenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "19",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "20",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyOneMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "21",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyTwoMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "22",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyThreeMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "23",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyFourMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "24",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyFiveMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "25",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentySixMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "26",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentySevenMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "27",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyEightMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor3,
                              numberColor4,
                              numberColor5,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "28",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TwentyNineMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "29",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirtyMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "30",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirtyOneMenu()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 9.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              numberColor,
                              numberColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "31",
                            style: TextStyle(color: whiteColor, fontSize: 36),
                          ),
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
