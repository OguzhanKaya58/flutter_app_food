import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

class Months extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kPrimaryColor, Colors.white]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 24,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => January())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 4.7,
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
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/subat.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("ŞUBAT",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/mart.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("MART",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/nisan.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("NİSAN",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/mayis.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("MAYIS",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/haziran.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("HAZİRAN",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/temmuz.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("TEMMUZ",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
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
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/eylül.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("EYLÜL",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/ekim.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("EKİM",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/kasım.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("KASIM",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
                        height: size.height / 4.7,
                        width: size.width / 3.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage("images/aralik.png"),
                                fit: BoxFit.fill)),
                        child: Container(
                          child: Text("ARALIK",
                              style: TextStyle(
                                fontSize: 24,
                                color: monthsTextColor,
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
