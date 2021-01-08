import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/avci_kebap.dart';
import 'package:flutter_app_food/foods/arayemek/biberli_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/anadolu_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/tas_kadayif.dart';
import 'package:flutter_app_food/menu/twelveMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class ElevenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "11.Gün",
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
                    MaterialPageRoute(builder: (context) => TwelveMenu()));
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
              colors: [kPrimaryColor, whiteColor]),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AnadoluCorbasi())),
              child: Menu(
                  name: "Anadolu Çorbası",
                  imgPath: "images/anadolu-corbasi.jpg",
                  calorie: "170 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AvciKebap())),
              child: Menu(
                  name: "Avcı Kebabı",
                  imgPath: "images/avci-kebabi.jpg",
                  calorie: "480 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BiberliBulgurPilavi())),
              child: Menu(
                  name: "Biberli Bulgur Pilavı",
                  imgPath: "images/biberli-bulgur-pilavi.jpg",
                  calorie: "162 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TasKadayif())),
              child: Menu(
                name: "Taş Kadayıf",
                imgPath: "images/tas-kadayif.jpg",
                calorie: "310 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
