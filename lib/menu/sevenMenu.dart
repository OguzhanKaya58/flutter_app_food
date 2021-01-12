import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/zade_kebab%C4%B1.dart';
import 'package:flutter_app_food/foods/arayemek/soganli_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/eristeli_kirmizi_mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/firin_posetinde_kabak_tatlisi.dart';
import 'package:flutter_app_food/menu/eightMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class SevenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "7.Gün",
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
                    MaterialPageRoute(builder: (context) => EightMenu()));
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
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EristeliKirmiziMercimekCorbasi())),
                child: Menu(
                    name: "Erişteli Kırmızı Mercimek Çorbası",
                    imgPath: "images/eristeli-kirmizi-mercimek.jpg",
                    calorie: "232 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ZadeKebabi())),
                child: Menu(
                    name: "Zade Kebabı",
                    imgPath: "images/zade-kebap.jpg",
                    calorie: "282 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SoganliPilav())),
                child: Menu(
                    name: "Soğanlı Pilav",
                    imgPath: "images/soganli-pilav.jpg",
                    calorie: "283 Kalori"),
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
      ),
    );
  }
}
