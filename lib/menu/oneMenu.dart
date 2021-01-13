import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_tavuk_kanat.dart';
import 'package:flutter_app_food/foods/arayemek/bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/yayla_corbasi.dart';
import 'package:flutter_app_food/foods/tursular/karisik_tursu.dart';
import 'package:flutter_app_food/menu/twoMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class OneMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "1.Gün",
          style: TextStyle(color: whiteColor),
        ),
        backgroundColor: menuAppBarColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: whiteColor),
        actions: [
          IconButton(
              icon: Icon(
                Icons.arrow_forward_rounded,
              ),
              padding: EdgeInsets.only(right: 30),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => TwoMenu()));
              }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kPrimaryColor,
                kPrimaryLightColor,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => YaylaCorbasi())),
              child: Menu(
                  name: "Yayla Çorbası",
                  imgPath: "images/yayla.jpg",
                  calorie: "93 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FirindaTavukKanat())),
              child: Menu(
                  name: "Fırında Tavuk Kanat",
                  imgPath: "images/firinda-tavuk-kanat.jpg",
                  calorie: "427 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BulgurPilavi())),
              child: Menu(
                  name: "Bulgur Pilavı",
                  imgPath: "images/bulgurPilavi.jpg",
                  calorie: "149 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => KarisikTursu())),
              child: Menu(
                  name: "Karışık Turşu",
                  imgPath: "images/tursu.jpg",
                  calorie: "24 Kalori"),
            ),
          ],
        ),
      ),
    );
  }
}
