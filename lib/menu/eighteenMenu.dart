import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/ispanak_yemegi.dart';
import 'package:flutter_app_food/foods/anayemek/tavuk_kapama.dart';
import 'package:flutter_app_food/foods/corbalar/sebzeli_arpa_sehriye_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/biskuvili_irmik_tatlisi.dart';
import 'package:flutter_app_food/menu/nineteenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class EighteenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "18.Gün",
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
                    MaterialPageRoute(builder: (context) => NineteenMenu()));
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
                  builder: (context) => SebzeliArpaSehriyeCorbasi())),
              child: Menu(
                  name: "Sebzeli Arpa Şehriye Çorbası",
                  imgPath: "images/sebzeli-arpa-sehriye-corbasi.jpg",
                  calorie: "136 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TavukKapama())),
              child: Menu(
                  name: "Tavuk Kapama",
                  imgPath: "images/tavuk-kapama.jpg",
                  calorie: "355 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => IspanakYemegi())),
              child: Menu(
                  name: "Ispanak Yemeği",
                  imgPath: "images/ıspanak-yemegi.jpg",
                  calorie: "76 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BiskuviliIrmikTatlisi())),
              child: Menu(
                name: "Bisküvili İrmik Tatlısı",
                imgPath: "images/biskuvili-irmik-tatlisi.jpg",
                calorie: "290 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
