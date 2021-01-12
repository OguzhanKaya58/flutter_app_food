import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/hasanpasa_koftesi.dart';
import 'package:flutter_app_food/foods/arayemek/pirin%C3%A7_pilav%C4%B1.dart';
import 'package:flutter_app_food/foods/corbalar/tavuklu_dugun_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/irmiksiz_revani.dart';
import 'package:flutter_app_food/menu/twentyFourMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyThreeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "23.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyFourMenu()));
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
                    builder: (context) => TavukluDugunCorbasi())),
                child: Menu(
                    name: "Tavuklu Düğün Çorbası",
                    imgPath: "images/tavuklu-dugun-corbasi.jpg",
                    calorie: "69 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HasanpasaKoftesi())),
                child: Menu(
                    name: "Hasanpaşa Köftesi",
                    imgPath: "images/Hasanpaşa-Köftesi.jpg",
                    calorie: "228 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PirincPilavi())),
                child: Menu(
                    name: "Pirinç Pilavı",
                    imgPath: "images/pirinc-pilavi.jpg",
                    calorie: "130 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => IrmiksizRevani())),
                child: Menu(
                  name: "İrmiksiz Revani",
                  imgPath: "images/İrmiksiz-Revani.jpg",
                  calorie: "348 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
