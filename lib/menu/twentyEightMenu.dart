import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/dalyan_kofte.dart';
import 'package:flutter_app_food/foods/arayemek/biberli_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/kis_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/baklaval%C4%B1k_yufkadan_f%C4%B1st%C4%B1kl%C4%B1_katmer.dart';
import 'package:flutter_app_food/menu/twentyNineMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyEightMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "28.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyNineMenu()));
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
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => KisCorbasi())),
              child: Menu(
                  name: "Kış Çorbası",
                  imgPath: "images/Kış-Çorbası.jpg",
                  calorie: "124 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DalyanKofte())),
              child: Menu(
                  name: "Dalyan Köfte",
                  imgPath: "images/Dalyan-Köfte.jpg",
                  calorie: "149 Kalori"),
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
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BaklavalikYufkadanFistikliKatmer())),
              child: Menu(
                name: "Baklavalık Yufkadan Fıstıklı Katmer",
                imgPath: "images/Baklavalık-Yufkadan-Fıstıklı-Katmer.jpeg",
                calorie: "510 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
