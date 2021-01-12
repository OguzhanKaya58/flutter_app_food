import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tencerede_patlican_oturtma.dart';
import 'package:flutter_app_food/foods/arayemek/ezogelin_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/tavuk_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/kremali_muhallebi.dart';
import 'package:flutter_app_food/menu/twentyOneMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "20.Gün",
          style: TextStyle(color: whiteColor),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.arrow_forward_rounded,
              ),
              padding: EdgeInsets.only(right: 30),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => TwentyOneMenu()));
              }),
        ],
        backgroundColor: menuAppBarColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: whiteColor),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, kPrimaryLightColor]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TavukCorbasi())),
              child: Menu(
                  name: "Tavuk Çorbası",
                  imgPath: "images/tavuk-corbasi.jpg",
                  calorie: "88 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TenceredePatlicanOturtma())),
              child: Menu(
                  name: "Tencerede Patlıcan Oturtma",
                  imgPath: "images/tencerede-patlican-oturtma.jpg",
                  calorie: "200 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EzogelinPilavi())),
              child: Menu(
                  name: "Ezogelin Pilavı",
                  imgPath: "images/ezogelin-pilavi.jpg",
                  calorie: "224 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => KramaliMuhallebi())),
              child: Menu(
                name: "Kremalı Muhallebi",
                imgPath: "images/kramali-muhallebi.jpg",
                calorie: "233 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
