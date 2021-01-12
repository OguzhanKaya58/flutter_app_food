import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/patates_musakka.dart';
import 'package:flutter_app_food/foods/arayemek/eristeli_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/hamursuz_arabasi_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/sutlu_un_helvasi.dart';
import 'package:flutter_app_food/menu/eighteenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class SeventeenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "17.Gün",
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
                    MaterialPageRoute(builder: (context) => EighteenMenu()));
              }),
        ],
        backgroundColor: menuAppBarColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: whiteColor),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                    builder: (context) => HamursuzArabasiCorbasi())),
                child: Menu(
                    name: "Hamursuz Arabaşı Çorbası",
                    imgPath: "images/hamursuz-arabasi-corbasi.jpg",
                    calorie: "188 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PatatesMusakka())),
                child: Menu(
                    name: "Patates Musakka",
                    imgPath: "images/Patates-Musakka.jpg",
                    calorie: "471 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EristeliBulgurPilavi())),
                child: Menu(
                    name: "Erişteli Bulgur Pilavı",
                    imgPath: "images/eristeli-bulgur-pilavi.jpg",
                    calorie: "266 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SutluUnHelvasi())),
                child: Menu(
                  name: "Sütlü Un Helvası",
                  imgPath: "images/Sütlü-Un-Helvası.jpg",
                  calorie: "295 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
