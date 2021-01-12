import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tavada_tavuk_sis.dart';
import 'package:flutter_app_food/foods/arayemek/pirasali_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/kiymali_eriste_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/firin_posetinde_kabak_tatlisi.dart';
import 'package:flutter_app_food/menu/thirteenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwelveMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "12.Gün",
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
                    MaterialPageRoute(builder: (context) => ThirteenMenu()));
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
                  builder: (context) => KiymaliEristeCorbasi())),
              child: Menu(
                  name: "Kıymalı Erişte Çorbası",
                  imgPath: "images/kiymali-eriste-corbasi.jpg",
                  calorie: "186 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TavadaTavukSis())),
              child: Menu(
                  name: "Tavada Tavuk Şiş",
                  imgPath: "images/tavada-tavuk-sis.jpg",
                  calorie: "208 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PirasaliBulgurPilavi())),
              child: Menu(
                  name: "Pırasalı Bulgur Pilavı",
                  imgPath: "images/pirasali-bulgur-pilavi.jpg",
                  calorie: "286 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirinPosetindeKabakTatlisi())),
              child: Menu(
                name: "Fırın Poşetinde Kabak Tatlısı",
                imgPath: "images/firin-posetinde-kabak-tatlisi.JPG",
                calorie: "216 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
