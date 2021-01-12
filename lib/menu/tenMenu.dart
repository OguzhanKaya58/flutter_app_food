import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/kogteli_patetes_dizmesi.dart';
import 'package:flutter_app_food/foods/arayemek/sebzeli_arpa_sehriye_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/tavuk_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/sultan_tatlisi.dart';
import 'package:flutter_app_food/menu/elevenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "10.Gün",
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
                    MaterialPageRoute(builder: (context) => ElevenMenu()));
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
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TavukCorbasi())),
                child: Menu(
                    name: "Tavuk Çorbası",
                    imgPath: "images/tavuk-corbasi.jpg",
                    calorie: "88 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KofteliPatatesDizmesi())),
                child: Menu(
                    name: "Köfteli Patates Dizmesi",
                    imgPath: "images/kofteli-patates-dizmesi.jpg",
                    calorie: "310 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SebzeliArpaSehriyePilavi())),
                child: Menu(
                    name: "Sebzeli Arpa Şehriye Pilavı",
                    imgPath: "images/sebzeli-arpa-sehriye-pilav.jpg",
                    calorie: "266 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SultanTatlisi())),
                child: Menu(
                  name: "Sultan Tatlısı",
                  imgPath: "images/sultan-tatlisi.jpg",
                  calorie: "345 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
