import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/coban_boregi.dart';
import 'package:flutter_app_food/foods/arayemek/d%C3%BCgmeli_kereviz.dart';
import 'package:flutter_app_food/foods/corbalar/pirincli_domates_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/sekerpare.dart';
import 'package:flutter_app_food/menu/thirtyOneMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class ThirtyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "30.Gün",
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
                    MaterialPageRoute(builder: (context) => ThirtyOneMenu()));
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
                  builder: (context) => PirincliDomatesCorbasi())),
              child: Menu(
                  name: "Pirinçli Domates Çorbası",
                  imgPath: "images/Pirinçli-Domates-Çorbası.jpg",
                  calorie: "84 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CobanBoregi())),
              child: Menu(
                  name: "Çoban Böreği",
                  imgPath: "images/Çoban-Böreği.jpg",
                  calorie: "475 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DogmeliKereviz())),
              child: Menu(
                  name: "Düğmeli Kereviz",
                  imgPath: "images/Düğmeli-Kereviz.jpg",
                  calorie: "220 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Sekerpare())),
              child: Menu(
                name: "Şekerpare",
                imgPath: "images/Şekerpare.webp",
                calorie: "424 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
