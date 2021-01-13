import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_etli_karnabahar_yemegi.dart';
import 'package:flutter_app_food/foods/arayemek/arpa_sehriyeli_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/bulgur_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/findikpare_tatlisi.dart';
import 'package:flutter_app_food/menu/twentyThreeMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyTwoMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "22.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyThreeMenu()));
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
                  MaterialPageRoute(builder: (context) => BulgurCorbasi())),
              child: Menu(
                  name: "Bulgur Çorbası",
                  imgPath: "images/bulgur-corbasi.jpg",
                  calorie: "94 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirindaEtliKarnabaharYemegi())),
              child: Menu(
                  name: "Fırında Etli Karnabahar Yemeği",
                  imgPath: "images/Fırında-Etli-Karnabahar-Yemeği.jpg",
                  calorie: "213 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ArpaSehriyeliPilav())),
              child: Menu(
                  name: "Arpa Şehriyeli Pilav",
                  imgPath: "images/arpa-sehriyeli-pilav.jpg",
                  calorie: "346 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FindikpareTatlisi())),
              child: Menu(
                name: "Fındıkpare Tatlısı",
                imgPath: "images/Fındıkpare-Tatlısı.jpg",
                calorie: "251 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
