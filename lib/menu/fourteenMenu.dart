import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/isvec-koftesi.dart';
import 'package:flutter_app_food/foods/arayemek/arpa_sehriyeli_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/ascibasi_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/sufle.dart';
import 'package:flutter_app_food/menu/fifteenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class FourteenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "14.Gün",
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
                    MaterialPageRoute(builder: (context) => FifteenMenu()));
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
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AscibasiCorbasi())),
              child: Menu(
                  name: "Aşçıbaşı Çorbası",
                  imgPath: "images/arabasi-corbasi.jpg",
                  calorie: "186 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => IsvecKoftesi())),
              child: Menu(
                  name: "İsveç Köftesi",
                  imgPath: "images/isvec-koftesi.jpg",
                  calorie: "196 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ArpaSehriyeliPilav())),
              child: Menu(
                  name: "Arpa Şehriyeli Pilav",
                  imgPath: "images/arpa-sehriyeli-pilav.jpg",
                  calorie: "171 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Sufle())),
              child: Menu(
                name: "Sufle",
                imgPath: "images/sufle.jpg",
                calorie: "169 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
