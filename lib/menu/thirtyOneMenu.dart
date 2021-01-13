import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_tavuk_pirzola.dart';
import 'package:flutter_app_food/foods/arayemek/kestaneli_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/ispanak_k%C3%B6k%C3%B6_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/padisah_yasti%C4%9Fi_tatlisi.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class ThirtyOneMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "31.Gün",
          style: TextStyle(color: whiteColor),
        ),
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
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => IspanakKokuCorbasi())),
              child: Menu(
                  name: "Ispanak Kökü Çorbası",
                  imgPath: "images/Ispanak-Kökü-Çorbası.jpg",
                  calorie: "103 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirindaTavukPirzola())),
              child: Menu(
                  name: "Fırında Tavuk Pirzola",
                  imgPath: "images/Fırında-Tavuk-Pirzola.jpg",
                  calorie: "154 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => KestaneliPilav())),
              child: Menu(
                  name: "Kestaneli Pilav",
                  imgPath: "images/Kestaneli-Pilav.jpg",
                  calorie: "139 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PadisahYastigiTatlisi())),
              child: Menu(
                name: "Padişah Yastığı Tatlısı",
                imgPath: "images/Padişah-Yastığı-Tatlısı.webp",
                calorie: "377 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
