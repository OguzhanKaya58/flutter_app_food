import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firin_posetinde_b%C3%BCt%C3%BCn_tavuk.dart';
import 'package:flutter_app_food/foods/arayemek/bademli_pilav.dart';
import 'package:flutter_app_food/foods/corbalar/eristeli_yesil_mercimekli_yogurt_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/nevzine_tatlisi.dart';
import 'package:flutter_app_food/menu/fourMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class ThreeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "3.Gün",
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
                    MaterialPageRoute(builder: (context) => FourMenu()));
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
                  builder: (context) =>
                      EristeliYesilMercimekliYogurtCorbasi())),
              child: Menu(
                  name: "Erişteli Yeşil Mercimekli Yoğurt Çorbası",
                  imgPath:
                      "images/Eristeli-Yesil-Mercimekli-Yogurt-Corbasi.jpg",
                  calorie: "105 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FirinPosetindeButunTavuk())),
              child: Menu(
                  name: "Fırın Poşetinde Bütün Tavuk",
                  imgPath: "images/firin-posetinde-butun-tavuk.jpg",
                  calorie: "155 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BademliPilav())),
              child: Menu(
                  name: "Bademli Pilav",
                  imgPath: "images/bademli-pilav.jpg",
                  calorie: "233 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NevzineTatlisi())),
              child: Menu(
                name: "Nevzine Tatlısı",
                imgPath: "images/nevzine-tatlisi.jpg",
                calorie: "450 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
