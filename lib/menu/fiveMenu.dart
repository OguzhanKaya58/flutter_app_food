import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/ispanak_yemegi.dart';
import 'package:flutter_app_food/foods/arayemek/soganli_tavuklu_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/domatesli_kabak_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/bisk%C3%BCvili_tavuk_gogs%C3%BC.dart';
import 'package:flutter_app_food/menu/sixMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class FiveMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "5.Gün",
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
                    MaterialPageRoute(builder: (context) => SixMenu()));
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
                    builder: (context) => DomatesliKabakCorbasi())),
                child: Menu(
                    name: "Domatesli Kabak Çorbası",
                    imgPath: "images/domatesli-kabak-corbasi.jpg",
                    calorie: "75 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SoganliTavukluPilav())),
                child: Menu(
                    name: "Soğanlı Tavuklu Pilav",
                    imgPath: "images/soganli-tavuklu-pilav.jpg",
                    calorie: "153 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => IspanakYemegi())),
                child: Menu(
                    name: "Ispanak Yemeği",
                    imgPath: "images/ıspanak-yemegi.jpg",
                    calorie: "76 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BisluviliTavukGogsu())),
                child: Menu(
                  name: "Bisküvili Yalançı Tavuk Göğsü",
                  imgPath: "images/yalanci-tavuk-göğsü.jpg",
                  calorie: "210 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
