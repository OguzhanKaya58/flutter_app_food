import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_sebzeli_tavuk_sote.dart';
import 'package:flutter_app_food/foods/arayemek/firik_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/topcati_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/kadayifli_etimek_tatlisi.dart';
import 'package:flutter_app_food/menu/twentyTwoMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyOneMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "21.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyTwoMenu()));
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
                    MaterialPageRoute(builder: (context) => TopcatiCorbasi())),
                child: Menu(
                    name: "Topçata Çorbası",
                    imgPath: "images/Topçata-Çorbası.jpg",
                    calorie: "168 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaSebzeliTavukSote())),
                child: Menu(
                    name: "Fırında Sebzeli Tavuk Sote",
                    imgPath: "images/Fırında_sebzeli_tavuk.jpg",
                    calorie: "389 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FirikPilavi())),
                child: Menu(
                    name: "Firik Pilavı",
                    imgPath: "images/firik-pilavi.png",
                    calorie: "346 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KadayifliEtimekTatlisi())),
                child: Menu(
                  name: "Kadayıflı Etimek Tatlısı",
                  imgPath: "images/Kadayıflı-Etimek-Tatlısı.jpg",
                  calorie: "233 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
