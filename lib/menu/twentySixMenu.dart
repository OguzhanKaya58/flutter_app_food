import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/katikli_dolma.dart';
import 'package:flutter_app_food/foods/arayemek/lahana_yemegi.dart';
import 'package:flutter_app_food/foods/corbalar/pasa_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/bulut_tatlisi.dart';
import 'package:flutter_app_food/menu/twentySevenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentySixMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "26.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentySevenMenu()));
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
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PasaCorbasi())),
              child: Menu(
                  name: "Paşa Çorbası",
                  imgPath: "images/Paşa-Çorbası.jpg",
                  calorie: "105 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => KatikliDolma())),
              child: Menu(
                  name: "Katıklı Dolma",
                  imgPath: "images/katikli-dolma.jpg",
                  calorie: "353 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LahanaYemegi())),
              child: Menu(
                  name: "Lahana Yemeği",
                  imgPath: "images/lahana-yemeği.jpg",
                  calorie: "107 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BulutTatlisi())),
              child: Menu(
                name: "Bulut Tatlısı",
                imgPath: "images/bulut-tatlisi.jpg",
                calorie: "465 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
