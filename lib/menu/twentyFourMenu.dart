import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_etimekli_besamel_soslu_tavuk.dart';
import 'package:flutter_app_food/foods/arayemek/sebze_spagetti.dart';
import 'package:flutter_app_food/foods/corbalar/sutlu_karnabahar_corbas%C4%B1.dart';
import 'package:flutter_app_food/foods/tatlilar/bisk%C3%BCvili_pasta.dart';
import 'package:flutter_app_food/menu/twentyFiveMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyFourMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "24.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyFiveMenu()));
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
                  builder: (context) => SutluKarnabaharCorbasi())),
              child: Menu(
                  name: "Sütlü Karnabahar Çorbası",
                  imgPath: "images/sutlu-karnabahar-corbasi.jpg",
                  calorie: "114 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirindaEtimekliBasemelSosluTavuk())),
              child: Menu(
                  name: "Fırında Etimekli Beşamel Soslu Tavuk",
                  imgPath: "images/Fırında-Etimekli-Beşamel-Soslu-Tavuk.jpg",
                  calorie: "298 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SebzeSpagetti())),
              child: Menu(
                  name: "Sebze Spagetti",
                  imgPath: "images/Sebze-Spagetti.jpg",
                  calorie: "310 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BiskuviliPasta())),
              child: Menu(
                name: "Bisküvili Pasta",
                imgPath: "images/Bisküvili-Pasta.jpg",
                calorie: "427 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
