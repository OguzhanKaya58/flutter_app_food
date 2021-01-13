import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_tavuk_sis.dart';
import 'package:flutter_app_food/foods/arayemek/eriste_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/salcali_karnibahar_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/portakalli_muhallebi.dart';
import 'package:flutter_app_food/menu/sixteenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class FifteenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "15.Gün",
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
                    MaterialPageRoute(builder: (context) => SixteenMenu()));
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
                  MaterialPageRoute(builder: (context) => KarnibaharCorbasi())),
              child: Menu(
                  name: "Karnabahar Çorbası",
                  imgPath: "images/salcali-karnibahar-corbasi.jpg",
                  calorie: "112 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FirindaTavukSis())),
              child: Menu(
                  name: "Fırında Tavuk Şiş",
                  imgPath: "images/firinda-tavuk-sis.jpg",
                  calorie: "126 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EristePilavi())),
              child: Menu(
                  name: "Erişte Pilavı",
                  imgPath: "images/eriste-pilavi.jpg",
                  calorie: "109 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PortakalliMuhallebi())),
              child: Menu(
                name: "Portakallı Muhallebi",
                imgPath: "images/portakalli-muhallebi.jpg",
                calorie: "113 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
