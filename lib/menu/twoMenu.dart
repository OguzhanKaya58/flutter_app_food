import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_p%C3%BCreli_kofte.dart';
import 'package:flutter_app_food/foods/arayemek/arpa_sehriyeli_bulgur_pilav%C4%B1.dart';
import 'package:flutter_app_food/foods/corbalar/s%C3%BCtl%C3%BC_mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/tatlilar/bal_kabagi.dart';
import 'package:flutter_app_food/menu/threeMenu.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class TwoMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "2.Gün",
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
                    MaterialPageRoute(builder: (context) => ThreeMenu()));
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
                    builder: (context) => SutluMercimekCorbasi())),
                child: Menu(
                    name: "Sütlü Mercimek Çorbası",
                    imgPath: "images/mercimek-corbasi.jpg",
                    calorie: "109 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaPureliKofte())),
                child: Menu(
                    name: "Fırında Püreli Köfte",
                    imgPath: "images/pure_kofte.jpg",
                    calorie: "383 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ArpaSehriyeliBulgur())),
                child: Menu(
                    name: "Arpa Şehriyeli Bulgur Pilavı",
                    imgPath: "images/sehriyeli-bulgur-pilavi.jpg",
                    calorie: "266 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BalKabagi())),
                child: Menu(
                  name: "Bal Kabağı Pastası",
                  imgPath: "images/kabak-tatlisi.jpg",
                  calorie: "200 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
