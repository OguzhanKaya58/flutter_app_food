import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/fabrication.dart';
import 'package:flutter_app_food/widgets/food_material.dart';
import 'package:flutter_app_food/widgets/food_menu_subtitle.dart';
import 'package:flutter_app_food/widgets/image_path.dart';
import 'package:flutter_app_food/widgets/materials.dart';
import 'package:flutter_app_food/widgets/preparation.dart';
import 'package:flutter_app_food/widgets/recipe.dart';

class KerevizYapragiCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kereviz Yaprağı Çorbası",
          style: TextStyle(color: whiteColor),
        ),
        backgroundColor: appBarColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: whiteColor),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kPrimaryColor,
              kPrimaryLightColor,
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImagePath(
                imagePath: "images/kereviz-yapragi-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "1 tane kerevizin yaprağı"),
              FoodMaterial(name: "1 tane kuru soğan"),
              FoodMaterial(name: "1 adet yeşil biber veya kapya kırmızı biber"),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Yeteri kadar tuz"),
              FoodMenuSubtitle(subTitleName: "Terbiyesi için:"),
              FoodMaterial(name: "4 yemek kaşığı un"),
              FoodMaterial(name: "1 kase yoğurt"),
              FoodMaterial(name: "Yarım limonun suyu"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kerevizin yapraklarını yıkıyoruz. Sonra salata yapar gibi doğruyoruz. "
                      "\n\n2. Tencereye 3 çorba kaşığı kadar yağ koyup yemeklik doğradığımız soğanı ve biberi kavuruyoruz. "
                      "\n\n3. Ardından kerevizi atıp onu da kavuruyoruz. "
                      "\n\n4. Üstüne isteğe göre bir paket et bulyon atıp tuzu ve 1,5 litre kaynar suyu ekleyip karıştırarak pişmeye bırakalım. "
                      "\n\n5. Terbiyesi için bir kapta yoğurdu, unu ve limonun suyunu çırpalım, hazır edelim. "
                      "\n\n6. Pişen çorbayı el blenderından geçirelim. "
                      "\n\n7. Çorbadan ekleyerek ılındırıp yavaş yavaş çorbaya ekleyelim. "
                      "\n\n8. 1 dk fokurdatıp kapatalım ocağımızı. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
