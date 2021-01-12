import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tencerede_kofteli_patates_yemegi.dart';
import 'package:flutter_app_food/foods/arayemek/eristeli_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/kereviz_yapragi_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/saray_muhallebisi.dart';
import 'package:flutter_app_food/menu/sevenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class SixMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "6.Gün",
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
                    MaterialPageRoute(builder: (context) => SevenMenu()));
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
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => KerevizYapragiCorbasi())),
              child: Menu(
                  name: "Kereviz Yaprağı Çorbası",
                  imgPath: "images/kereviz-yapragi-corbasi.jpg",
                  calorie: "139 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TenceredeKofteliPatatesYemegi())),
              child: Menu(
                  name: "Tencerede Köfteli Patates Yemeği",
                  imgPath: "images/misket-kofteli-patates-yemegi.jpg",
                  calorie: "398 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EristeliBulgurPilavi())),
              child: Menu(
                  name: "Erişteli Bulgur Pilavı",
                  imgPath: "images/eristeli-bulgur-pilavi.jpg",
                  calorie: "149 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SarayMuhallebisi())),
              child: Menu(
                name: "Saray Muhallebisi",
                imgPath: "images/saray-muhallebisi.jpg",
                calorie: "233 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
