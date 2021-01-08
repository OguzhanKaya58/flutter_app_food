import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/tencerede_etli_kuru_fasulye.dart';
import 'package:flutter_app_food/foods/arayemek/pirin%C3%A7_pilav%C4%B1.dart';
import 'package:flutter_app_food/foods/corbalar/tavuklu_un_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/kesk%C3%BCl.dart';
import 'package:flutter_app_food/menu/tenMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class NineMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "9.Gün",
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
                    MaterialPageRoute(builder: (context) => TenMenu()));
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
              colors: [kPrimaryColor, whiteColor]),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TavukluUnCorbasi())),
              child: Menu(
                  name: "Tavuklu Un Çorbası",
                  imgPath: "images/tavuklu-un-corbasi.jpg",
                  calorie: "36 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TencereEtliKuruFasulye())),
              child: Menu(
                  name: "Tencerede Etli Kuru Fasulye",
                  imgPath: "images/kuru-fasülye.jpg",
                  calorie: "379 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PirincPilavi())),
              child: Menu(
                  name: "Pirinç Pilavı",
                  imgPath: "images/pirinc-pilavi.jpg",
                  calorie: "130 Kalori"),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Keskul())),
              child: Menu(
                name: "Keşkül",
                imgPath: "images/keskul.jpg",
                calorie: "273 Kalori",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
