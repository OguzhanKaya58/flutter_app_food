import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tavuklu_cokertme_kebab%C4%B1.dart';
import 'package:flutter_app_food/foods/arayemek/mamzana.dart';
import 'package:flutter_app_food/foods/corbalar/yesil_mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/sutlu_rulo_tatli.dart';
import 'package:flutter_app_food/menu/twentyEightMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentySevenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "27.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyEightMenu()));
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
                  builder: (context) => YesilMercimekCorbasi())),
              child: Menu(
                  name: "Yeşil Mercimek Çorbası",
                  imgPath: "images/Yeşil-Mercimek-Çorbası.jpg",
                  calorie: "120 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TavukluCokertmeKebabi())),
              child: Menu(
                  name: "Tavuklu Çökertme Kebabı",
                  imgPath: "images/Tavuklu-Çökertme-Kebabı.jpg",
                  calorie: "450 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Mamzana())),
              child: Menu(
                  name: "Mamzana",
                  imgPath: "images/Mamzana.jpg",
                  calorie: "136 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SutluRuloTatlo())),
              child: Menu(
                name: "Sütlü Rulo Tatlı",
                imgPath: "images/Sütlü-Rulo-Tatlı.jpg",
                calorie: "250 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
