import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/arayemek/firinda_patates.dart';
import 'package:flutter_app_food/foods/arayemek/soganli_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/firin_posetinde_kabak_tatlisi.dart';
import 'package:flutter_app_food/menu/twentySixMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyFiveMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "25.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentySixMenu()));
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
                  MaterialPageRoute(builder: (context) => MercimekCorbasi())),
              child: Menu(
                  name: "Mercimek Çorbası",
                  imgPath: "images/mercimek-corbasi.webp",
                  calorie: "275 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SoganliPilav())),
              child: Menu(
                  name: "Soğanlı Pilav",
                  imgPath: "images/soganli-pilav.jpg",
                  calorie: "283 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FirindaPatates())),
              child: Menu(
                  name: "Fırında Köz Tadında Patates",
                  imgPath: "images/Fırında-Köz-Tadında-Patates.jpg",
                  calorie: "240 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirinPosetindeKabakTatlisi())),
              child: Menu(
                name: "Fırın Poşetinde Kabak Tatlısı",
                imgPath: "images/firin-posetinde-kabak-tatlisi.JPG",
                calorie: "216 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
