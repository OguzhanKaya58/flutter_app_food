import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/ispanak_yemegi.dart';
import 'package:flutter_app_food/foods/arayemek/arpa_sehriyeli_bulgur_pilav%C4%B1.dart';
import 'package:flutter_app_food/foods/arayemek/arpa_sehriyeli_pilav.dart';
import 'package:flutter_app_food/foods/arayemek/bademli_pilav.dart';
import 'package:flutter_app_food/foods/arayemek/biberli_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/d%C3%BCgmeli_kereviz.dart';
import 'package:flutter_app_food/foods/arayemek/eriste_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/eristeli_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/ezogelin_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/firik_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/firinda_patates.dart';
import 'package:flutter_app_food/foods/arayemek/hasbeli_as.dart';
import 'package:flutter_app_food/foods/arayemek/kabak_siyirma.dart';
import 'package:flutter_app_food/foods/arayemek/kestaneli_pilav.dart';
import 'package:flutter_app_food/foods/arayemek/lahana_yemegi.dart';
import 'package:flutter_app_food/foods/arayemek/mamzana.dart';
import 'package:flutter_app_food/foods/arayemek/patlicanli_pirinc_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/pirasali_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/pirin%C3%A7_pilav%C4%B1.dart';
import 'package:flutter_app_food/foods/arayemek/salcali_bulgur_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/sebze_spagetti.dart';
import 'package:flutter_app_food/foods/arayemek/sebzeli_arpa_sehriye_pilavi.dart';
import 'package:flutter_app_food/foods/arayemek/soganli_pilav.dart';
import 'package:flutter_app_food/foods/arayemek/sosuyle_pisen_makarna.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class AllRice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ara Sıcaklar",
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
                    MaterialPageRoute(builder: (context) => BulgurPilavi())),
                child: Menu(
                    name: "Bulgur Pilavı",
                    imgPath: "images/bulgurPilavi.jpg",
                    calorie: "149 Kalori"),
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
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BademliPilav())),
                child: Menu(
                    name: "Bademli Pilav",
                    imgPath: "images/bademli-pilav.jpg",
                    calorie: "233 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => KabakSiyirma())),
                child: Menu(
                    name: "Kabak Sıyırma",
                    imgPath: "images/Kabak-Sıyırma.jpg",
                    calorie: "131 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => IspanakYemegi())),
                child: Menu(
                    name: "Ispanak Yemeği",
                    imgPath: "images/ıspanak-yemegi.jpg",
                    calorie: "76 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EristeliBulgurPilavi())),
                child: Menu(
                    name: "Erişteli Bulgur Pilavı",
                    imgPath: "images/eristeli-bulgur-pilavi.jpg",
                    calorie: "149 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SoganliPilav())),
                child: Menu(
                    name: "Soğanlı Pilav",
                    imgPath: "images/soganli-pilav.jpg",
                    calorie: "283 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HasbeliAs())),
                child: Menu(
                    name: "Hasbeli Aş",
                    imgPath: "images/hasbeli-as.jpg",
                    calorie: "244 Kalori"),
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
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SebzeliArpaSehriyePilavi())),
                child: Menu(
                    name: "Sebzeli Arpa Şehriye Pilavı",
                    imgPath: "images/sebzeli-arpa-sehriye-pilav.jpg",
                    calorie: "266 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BiberliBulgurPilavi())),
                child: Menu(
                    name: "Biberli Bulgur Pilavı",
                    imgPath: "images/biberli-bulgur-pilavi.jpg",
                    calorie: "162 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PirasaliBulgurPilavi())),
                child: Menu(
                    name: "Pırasalı Bulgur Pilavı",
                    imgPath: "images/pirasali-bulgur-pilavi.jpg",
                    calorie: "286 Kalori"),
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
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ArpaSehriyeliPilav())),
                child: Menu(
                    name: "Arpa Şehriyeli Pilav",
                    imgPath: "images/arpa-sehriyeli-pilav.jpg",
                    calorie: "171 Kalori"),
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
                    builder: (context) => SalcaliBulgurPilavi())),
                child: Menu(
                    name: "Salçalı Bulgur Pilavı",
                    imgPath: "images/salcali-bulgur-pilavi.jpg",
                    calorie: "200 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EzogelinPilavi())),
                child: Menu(
                    name: "Ezogelin Pilavı",
                    imgPath: "images/ezogelin-pilavi.jpg",
                    calorie: "224 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FirikPilavi())),
                child: Menu(
                    name: "Firik Pilavı",
                    imgPath: "images/firik-pilavi.png",
                    calorie: "346 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SebzeSpagetti())),
                child: Menu(
                    name: "Sebze Spagetti",
                    imgPath: "images/Sebze-Spagetti.jpg",
                    calorie: "310 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FirindaPatates())),
                child: Menu(
                    name: "Fırında Köz Tadında Patates",
                    imgPath: "images/Fırında-Köz-Tadında-Patates.jpg",
                    calorie: "240 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LahanaYemegi())),
                child: Menu(
                    name: "Lahana Yemeği",
                    imgPath: "images/lahana-yemeği.jpg",
                    calorie: "107 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Mamzana())),
                child: Menu(
                    name: "Mamzana",
                    imgPath: "images/Mamzana.jpg",
                    calorie: "136 Kalori"),
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
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DogmeliKereviz())),
                child: Menu(
                    name: "Düğmeli Kereviz",
                    imgPath: "images/Düğmeli-Kereviz.jpg",
                    calorie: "220 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => KestaneliPilav())),
                child: Menu(
                    name: "Kestaneli Pilav",
                    imgPath: "images/Kestaneli-Pilav.jpg",
                    calorie: "139 Kalori"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
