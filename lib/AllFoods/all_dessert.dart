import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/tatlilar/ay_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/baklaval%C4%B1k_yufkadan_f%C4%B1st%C4%B1kl%C4%B1_katmer.dart';
import 'package:flutter_app_food/foods/tatlilar/bal_kabagi.dart';
import 'package:flutter_app_food/foods/tatlilar/bardakta_tiramisu.dart';
import 'package:flutter_app_food/foods/tatlilar/bisk%C3%BCvili_pasta.dart';
import 'package:flutter_app_food/foods/tatlilar/bisk%C3%BCvili_tavuk_gogs%C3%BC.dart';
import 'package:flutter_app_food/foods/tatlilar/biskuvili_irmik_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/bulut_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/cikolatali_mousse_pasta.dart';
import 'package:flutter_app_food/foods/tatlilar/findikpare_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/firin_posetinde_kabak_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/irmiksiz_revani.dart';
import 'package:flutter_app_food/foods/tatlilar/kadayifli_etimek_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/kadayifli_pasa_sarmasi.dart';
import 'package:flutter_app_food/foods/tatlilar/kesk%C3%BCl.dart';
import 'package:flutter_app_food/foods/tatlilar/kremali_muhallebi.dart';
import 'package:flutter_app_food/foods/tatlilar/nevzine_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/padisah_yasti%C4%9Fi_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/parmak_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/portakalli_muhallebi.dart';
import 'package:flutter_app_food/foods/tatlilar/sade_puding.dart';
import 'package:flutter_app_food/foods/tatlilar/saray_muhallebisi.dart';
import 'package:flutter_app_food/foods/tatlilar/sekerpare.dart';
import 'package:flutter_app_food/foods/tatlilar/sufle.dart';
import 'package:flutter_app_food/foods/tatlilar/sultan_tatlisi.dart';
import 'package:flutter_app_food/foods/tatlilar/sutlu_rulo_tatli.dart';
import 'package:flutter_app_food/foods/tatlilar/sutlu_un_helvasi.dart';
import 'package:flutter_app_food/foods/tatlilar/tas_kadayif.dart';

import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class AllDessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tatlılar",
          style: TextStyle(color: whiteColor),
        ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BalKabagi())),
                child: Menu(
                  name: "Bal Kabağı Pastası",
                  imgPath: "images/kabak-tatlisi.jpg",
                  calorie: "200 Kalori",
                ),
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
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BardaktaTiramisu())),
                child: Menu(
                  name: "Bardakta Tiramisu",
                  imgPath: "images/Bardakta-Tiramisu.jpg",
                  calorie: "375 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BisluviliTavukGogsu())),
                child: Menu(
                  name: "Bisküvili Yalançı Tavuk Göğsü",
                  imgPath: "images/yalanci-tavuk-göğsü.jpg",
                  calorie: "210 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SarayMuhallebisi())),
                child: Menu(
                  name: "Saray Muhallebisi",
                  imgPath: "images/saray-muhallebisi.jpg",
                  calorie: "233 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirinPosetindeKabakTatlisi())),
                child: Menu(
                  name: "Fırın Poşetinde Kabak Tatlısı",
                  imgPath: "images/firin-posetinde-kabak-tatlisi.JPG",
                  calorie: "216 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AyTatlisi())),
                child: Menu(
                  name: "Ay Tatlısı",
                  imgPath: "images/ay-tatlisi.jpg",
                  calorie: "200 Kalori",
                ),
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
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SultanTatlisi())),
                child: Menu(
                  name: "Sultan Tatlısı",
                  imgPath: "images/sultan-tatlisi.jpg",
                  calorie: "345 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TasKadayif())),
                child: Menu(
                  name: "Taş Kadayıf",
                  imgPath: "images/tas-kadayif.jpg",
                  calorie: "310 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirinPosetindeKabakTatlisi())),
                child: Menu(
                  name: "Fırın Poşetinde Kabak Tatlısı",
                  imgPath: "images/firin-posetinde-kabak-tatlisi.JPG",
                  calorie: "216 Kalori",
                ),
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
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Sufle())),
                child: Menu(
                  name: "Sufle",
                  imgPath: "images/sufle.jpg",
                  calorie: "169 Kalori",
                ),
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
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SadePuding())),
                child: Menu(
                  name: "Sade Puding",
                  imgPath: "images/sade-puding.jpg",
                  calorie: "154 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SutluUnHelvasi())),
                child: Menu(
                  name: "Sütlü Un Helvası",
                  imgPath: "images/Sütlü-Un-Helvası.jpg",
                  calorie: "295 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BiskuviliIrmikTatlisi())),
                child: Menu(
                  name: "Bisküvili İrmik Tatlısı",
                  imgPath: "images/biskuvili-irmik-tatlisi.jpg",
                  calorie: "290 Kalori",
                ),
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
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KramaliMuhallebi())),
                child: Menu(
                  name: "Kremalı Muhallebi",
                  imgPath: "images/kramali-muhallebi.jpg",
                  calorie: "233 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KadayifliEtimekTatlisi())),
                child: Menu(
                  name: "Kadayıflı Etimek Tatlısı",
                  imgPath: "images/Kadayıflı-Etimek-Tatlısı.jpg",
                  calorie: "233 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FindikpareTatlisi())),
                child: Menu(
                  name: "Fındıkpare Tatlısı",
                  imgPath: "images/Fındıkpare-Tatlısı.jpg",
                  calorie: "251 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => IrmiksizRevani())),
                child: Menu(
                  name: "İrmiksiz Revani",
                  imgPath: "images/İrmiksiz-Revani.jpg",
                  calorie: "348 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BiskuviliPasta())),
                child: Menu(
                  name: "Bisküvili Pasta",
                  imgPath: "images/Bisküvili-Pasta.jpg",
                  calorie: "427 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BulutTatlisi())),
                child: Menu(
                  name: "Bulut Tatlısı",
                  imgPath: "images/bulut-tatlisi.jpg",
                  calorie: "465 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SutluRuloTatli())),
                child: Menu(
                  name: "Sütlü Rulo Tatlı",
                  imgPath: "images/Sütlü-Rulo-Tatlı.jpg",
                  calorie: "250 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BaklavalikYufkadanFistikliKatmer())),
                child: Menu(
                  name: "Baklavalık Yufkadan Fıstıklı Katmer",
                  imgPath: "images/Baklavalık-Yufkadan-Fıstıklı-Katmer.jpeg",
                  calorie: "510 Kalori",
                ),
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
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Sekerpare())),
                child: Menu(
                  name: "Şekerpare",
                  imgPath: "images/Şekerpare.webp",
                  calorie: "424 Kalori",
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PadisahYastigiTatlisi())),
                child: Menu(
                  name: "Padişah Yastığı Tatlısı",
                  imgPath: "images/Padişah-Yastığı-Tatlısı.webp",
                  calorie: "377 Kalori",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
