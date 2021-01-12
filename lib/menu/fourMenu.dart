import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/centik_kebabi.dart';
import 'package:flutter_app_food/foods/arayemek/kabak_siyirma.dart';
import 'package:flutter_app_food/foods/corbalar/ezogelin_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/bardakta_tiramisu.dart';
import 'package:flutter_app_food/menu/fiveMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class FourMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "4.Gün",
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
                    MaterialPageRoute(builder: (context) => FiveMenu()));
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
                  MaterialPageRoute(builder: (context) => EzogelinCorbasi())),
              child: Menu(
                  name: "Ezogelin Çorbası",
                  imgPath: "images/ezogelin-corbasi.jpg",
                  calorie: "55 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CentikKebabi())),
              child: Menu(
                  name: "Çentik Kebabı",
                  imgPath: "images/Çentik-Kebabı.jpg",
                  calorie: "143 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => KabakSiyirma())),
              child: Menu(
                  name: "Kabak Sıyırma",
                  imgPath: "images/Kabak-Sıyırma.jpg",
                  calorie: "131 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BardaktaTiramisu())),
              child: Menu(
                name: "Bardakta Tiramisu",
                imgPath: "images/Bardakta-Tiramisu.jpg",
                calorie: "375 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
