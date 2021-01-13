import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_sebzeli_kofte.dart';
import 'package:flutter_app_food/foods/arayemek/salcali_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/corbalar/muradiye_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/kadayifli_pasa_sarmasi.dart';
import 'package:flutter_app_food/menu/twentyMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class NineteenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "19.Gün",
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
                    MaterialPageRoute(builder: (context) => TwentyMenu()));
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
                  MaterialPageRoute(builder: (context) => MuradiyeCorbasi())),
              child: Menu(
                  name: "Muradiye Çorbası",
                  imgPath: "images/muradiye-corbasi.jpg",
                  calorie: "91 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirindaSebzeliKofte())),
              child: Menu(
                  name: "Fırında Sebzeli Köfte",
                  imgPath: "images/sebzeli-firinda-kofte.jpg",
                  calorie: "398 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SalcaliBulgurPilavi())),
              child: Menu(
                  name: "Salçalı Bulgur Pilavı",
                  imgPath: "images/salcali-bulgur-pilavi.jpg",
                  calorie: "200 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => KadayifliPasaSarmasi())),
              child: Menu(
                name: "Kadayıflı Paşa Sarması",
                imgPath: "images/kadayifli-pasa-sarma.jpg",
                calorie: "310 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
