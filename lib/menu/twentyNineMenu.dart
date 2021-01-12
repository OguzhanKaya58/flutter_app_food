import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tavuk_pane.dart';
import 'package:flutter_app_food/foods/arayemek/sosuyle_pisen_makarna.dart';
import 'package:flutter_app_food/foods/corbalar/terbiyeli_ispanak_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/cikolatali_mousse_pasta.dart';
import 'package:flutter_app_food/menu/thirtyMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwentyNineMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "29.Gün",
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
                    MaterialPageRoute(builder: (context) => ThirtyMenu()));
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
                    builder: (context) => TerbiyeliIspanakCorbasi())),
                child: Menu(
                    name: "Terbiyeli Ispanak Çorbası",
                    imgPath: "images/Terbiyeli-Ispanak-Çorbası.jpg",
                    calorie: "103 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TavukPane())),
                child: Menu(
                    name: "Tavuk Pane",
                    imgPath: "images/Tavuk-Pane.jpg",
                    calorie: "265 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SosuylaPisenMakarna())),
                child: Menu(
                    name: "Sosuyla Pişen Makarna",
                    imgPath: "images/Sosuyla-Pişen-Makarna.jpg",
                    calorie: "221 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CikolataliMoussePasta())),
                child: Menu(
                  name: "Çikolatalı Mousse Pasta",
                  imgPath: "images/Çikolatalı-Mousse-Pasta.jpg",
                  calorie: "209 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
