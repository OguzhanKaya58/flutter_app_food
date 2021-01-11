import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/corbalar/anadolu_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/ascibasi_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/bulgur_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/domatesli_kabak_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/eristeli_kirmizi_mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/eristeli_yesil_mercimekli_yogurt_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/ezogelin_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/hamursuz_arabasi_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/kereviz_yapragi_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/kis_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/kiymali_eriste_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/m%C3%BClayim_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/muradiye_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/pasa_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/pirincli_domates_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/s%C3%BCtl%C3%BC_mercimek_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/sakala_carpan_corba.dart';
import 'package:flutter_app_food/foods/corbalar/salcali_karnibahar_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/sebzeli_arpa_sehriye_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/sutlu_karnabahar_corbas%C4%B1.dart';
import 'package:flutter_app_food/foods/corbalar/tavuk_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/tavuklu_dugun_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/tavuklu_un_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/terbiyeli_ispanak_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/terbiyeli_kavrulmus_sehriye_corbas%C4%B1.dart';
import 'package:flutter_app_food/foods/corbalar/topcati_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/yayla_corbasi.dart';
import 'package:flutter_app_food/foods/corbalar/yesil_mercimek_corbasi.dart';

import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class AllSoup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Çorbalar",
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
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => YaylaCorbasi())),
                child: Menu(
                    name: "Yayla Çorbası",
                    imgPath: "images/yayla.jpg",
                    calorie: "93 Kalori"),
              ),
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
                    builder: (context) =>
                        EristeliYesilMercimekliYogurtCorbasi())),
                child: Menu(
                    name: "Erişteli Yeşil Mercimekli Yoğurt Çorbası",
                    imgPath:
                        "images/Eristeli-Yesil-Mercimekli-Yogurt-Corbasi.jpg",
                    calorie: "105 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EzogelinCorbasi())),
                child: Menu(
                    name: "Ezogelin Çorbası",
                    imgPath: "images/ezogelin-corbasi.jpg",
                    calorie: "55 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DomatesliKabakCorbasi())),
                child: Menu(
                    name: "Domatesli Kabak Çorbası",
                    imgPath: "images/domatesli-kabak-corbasi.jpg",
                    calorie: "75 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KerevizYapragiCorbasi())),
                child: Menu(
                    name: "Kereviz Yaprağı Çorbası",
                    imgPath: "images/kereviz-yapragi-corbasi.jpg",
                    calorie: "139 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EristeliKirmiziMercimekCorbasi())),
                child: Menu(
                    name: "Erişteli Kırmızı Mercimek Çorbası",
                    imgPath: "images/eristeli-kirmizi-mercimek.jpg",
                    calorie: "232 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TerbiyeliKavrulmusSehriyeCorbasi())),
                child: Menu(
                    name: "Terbiyeli Kavrulmuş Şehriye Çorbası",
                    imgPath: "images/Terbiyeli-Kavrulmuş-Şehriye-Çorbası.JPG",
                    calorie: "137 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TavukluUnCorbasi())),
                child: Menu(
                    name: "Tavuklu Un Çorbası",
                    imgPath: "images/tavuklu-un-corbasi.jpg",
                    calorie: "36 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TavukCorbasi())),
                child: Menu(
                    name: "Tavuk Çorbası",
                    imgPath: "images/tavuk-corbasi.jpg",
                    calorie: "88 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AnadoluCorbasi())),
                child: Menu(
                    name: "Anadolu Çorbası",
                    imgPath: "images/anadolu-corbasi.jpg",
                    calorie: "170 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KiymaliEristeCorbasi())),
                child: Menu(
                    name: "Kıymalı Erişte Çorbası",
                    imgPath: "images/kiymali-eriste-corbasi.jpg",
                    calorie: "186 Kalori"),
              ),
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
                    MaterialPageRoute(builder: (context) => AscibasiCorbasi())),
                child: Menu(
                    name: "Aşçıbaşı Çorbası",
                    imgPath: "images/arabasi-corbasi.jpg",
                    calorie: "186 Kalori"),
              ),
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
                    MaterialPageRoute(builder: (context) => MulayimCorbasi())),
                child: Menu(
                    name: "Mülayim Çorbası",
                    imgPath: "images/mulayim-corbasi.jpg",
                    calorie: "115 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HamursuzArabasiCorbasi())),
                child: Menu(
                    name: "Hamursuz Arabaşı Çorbası",
                    imgPath: "images/hamursuz-arabasi-corbasi.jpg",
                    calorie: "188 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SebzeliArpaSehriyeCorbasi())),
                child: Menu(
                    name: "Sebzeli Arpa Şehriye Çorbası",
                    imgPath: "images/sebzeli-arpa-sehriye-corbasi.jpg",
                    calorie: "136 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MuradiyeCorbasi())),
                child: Menu(
                    name: "Muradiye Çorbası",
                    imgPath: "images/muradiye-corbasi.jpg",
                    calorie: "91 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TopcatiCorbasi())),
                child: Menu(
                    name: "Topçata Çorbası",
                    imgPath: "images/Topçata-Çorbası.jpg",
                    calorie: "168 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BulgurCorbasi())),
                child: Menu(
                    name: "Bulgur Çorbası",
                    imgPath: "images/bulgur-corbasi.jpg",
                    calorie: "94 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TavukluDugunCorbasi())),
                child: Menu(
                    name: "Tavuklu Düğün Çorbası",
                    imgPath: "images/tavuklu-dugun-corbasi.jpg",
                    calorie: "69 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SutluKarnabaharCorbasi())),
                child: Menu(
                    name: "Sütlü Karnabahar Çorbası",
                    imgPath: "images/sutlu-karnabahar-corbasi.jpg",
                    calorie: "114 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MercimekCorbasi())),
                child: Menu(
                    name: "Mercimek Çorbası",
                    imgPath: "images/mercimek-corbasi.webp",
                    calorie: "275 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PasaCorbasi())),
                child: Menu(
                    name: "Paşa Çorbası",
                    imgPath: "images/Paşa-Çorbası.jpg",
                    calorie: "105 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => YesilMercimekCorbasi())),
                child: Menu(
                    name: "Yeşil Mercimek Çorbası",
                    imgPath: "images/Yeşil-Mercimek-Çorbası.jpg",
                    calorie: "120 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => KisCorbasi())),
                child: Menu(
                    name: "Kış Çorbası",
                    imgPath: "images/Kış-Çorbası.jpg",
                    calorie: "124 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TerbiyeliIspanakCorbasi())),
                child: Menu(
                    name: "Terbiyeli Ispanak Çorbası",
                    imgPath: "images/Terbiyeli-Ispanak-Çorbası.jpg",
                    calorie: "103 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PirincliDomatesCorbasi())),
                child: Menu(
                    name: "Pirinçli Domates Çorbası",
                    imgPath: "images/Pirinçli-Domates-Çorbası.jpg",
                    calorie: "84 Kalori"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
