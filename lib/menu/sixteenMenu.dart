import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tavada_tavuk_baget.dart';
import 'package:flutter_app_food/foods/arayemek/sebzeli_arpa_sehriye_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/m%C3%BClayim_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/sade_puding.dart';
import 'package:flutter_app_food/menu/seventeenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class SixteenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "16.Gün",
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
                    MaterialPageRoute(builder: (context) => SeventeenMenu()));
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
                    MaterialPageRoute(builder: (context) => MulayimCorbasi())),
                child: Menu(
                    name: "Mülayim Çorbası",
                    imgPath: "images/mulayim-corbasi.jpg",
                    calorie: "115 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TavadaTavukBaget())),
                child: Menu(
                    name: "Tavada Tavuk Baget",
                    imgPath: "images/tavada-tavuk-baget.jpg",
                    calorie: "120 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SebzeliArpaSehriyePilavi())),
                child: Menu(
                    name: "Sebzeli Arpa Şehriye Pilavı",
                    imgPath: "images/sebzeli-arpa-sehriye-pilav.jpg",
                    calorie: "266 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SadePuding())),
                child: Menu(
                  name: "Sade Puding",
                  imgPath: "images/sade-puding.jpg",
                  calorie: "154 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
