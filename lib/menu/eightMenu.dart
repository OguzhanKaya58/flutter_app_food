import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tavuklu_patates_oturtma.dart';
import 'package:flutter_app_food/foods/arayemek/hasbeli_as.dart';
import 'package:flutter_app_food/foods/corbalar/terbiyeli_kavrulmus_sehriye_corbas%C4%B1.dart';
import 'package:flutter_app_food/foods/tatlilar/ay_tatlisi.dart';
import 'package:flutter_app_food/menu/nineMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class EightMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "8.Gün",
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
                    MaterialPageRoute(builder: (context) => NineMenu()));
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
                  builder: (context) => TerbiyeliKavrulmusSehriyeCorbasi())),
              child: Menu(
                  name: "Terbiyeli Kavrulmuş Şehriye Çorbası",
                  imgPath: "images/Terbiyeli-Kavrulmuş-Şehriye-Çorbası.JPG",
                  calorie: "137 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TavukluPatatesOturtma())),
              child: Menu(
                  name: "Tavuklu Patates Oturtma",
                  imgPath: "images/tavuklu-patates-oturtma.jpg",
                  calorie: "172 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HasbeliAs())),
              child: Menu(
                  name: "Hasbeli Aş",
                  imgPath: "images/hasbeli-as.jpg",
                  calorie: "244 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AyTatlisi())),
              child: Menu(
                name: "Ay Tatlısı",
                imgPath: "images/ay-tatlisi.jpg",
                calorie: "200 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
