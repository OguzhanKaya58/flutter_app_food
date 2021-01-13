import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/g%C3%BCvecte_soslu_kofte.dart';
import 'package:flutter_app_food/foods/arayemek/patlicanli_pirinc_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/sakala_carpan_corba.dart';
import 'package:flutter_app_food/foods/tatlilar/parmak_tatlisi.dart';
import 'package:flutter_app_food/menu/fourteenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class ThirteenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "13.Gün",
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
                    MaterialPageRoute(builder: (context) => FourteenMenu()));
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
                  MaterialPageRoute(builder: (context) => SakalaCarpanCorba())),
              child: Menu(
                  name: "Sakala Çarpan Çorbası",
                  imgPath: "images/sakala-carpan-corba.jpg",
                  calorie: "188 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => GuvecteSosluKofte())),
              child: Menu(
                  name: "Güveçte Soslu Köfte",
                  imgPath: "images/güvecte-soslu-köfte.jpg",
                  calorie: "320 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PatlicanliPrincPilavi())),
              child: Menu(
                  name: "Patlıcanlı Pirinç Pilavı",
                  imgPath: "images/patlicanli-pirinc-pilavi.jpg",
                  calorie: "123 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ParmakTatlisi())),
              child: Menu(
                name: "Parmak Tatlısı",
                imgPath: "images/parmak-tatlisi.jpg",
                calorie: "165 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
