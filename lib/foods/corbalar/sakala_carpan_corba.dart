import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/fabrication.dart';
import 'package:flutter_app_food/widgets/food_material.dart';
import 'package:flutter_app_food/widgets/image_path.dart';
import 'package:flutter_app_food/widgets/materials.dart';
import 'package:flutter_app_food/widgets/preparation.dart';
import 'package:flutter_app_food/widgets/recipe.dart';

class SakalaCarpanCorba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sakala Çarpan Çorba",
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
                imagePath: "images/sakala-carpan-corba.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1.5 su bardağı yeşil mercimek"),
              FoodMaterial(name: "1 Çay bardağı erişte (ya da tel şehriye)"),
              FoodMaterial(name: "1 Adet orta boy soğan"),
              FoodMaterial(name: "3 Yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 Yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 Yemek kaşığı biber salçası"),
              FoodMaterial(name: "1 Tatlı kaşığı tuz"),
              FoodMaterial(name: "5 Su bardağı su"),
              FoodMaterial(name: "Karabiber, Kuru Nane,"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Soğan yemeklik doğranıp sıvı yağda kavrulur. Salça eklenir. Yıkanıp süzülmüş mercimek eklenir. "
                      "\n\n2. Ben mercimeği yarım saat suda bekletiyorum. Su eklenir. Mercimeğin üstü kapatılır, kaynayınca kısık ateşe alınır ve pişmesine yakın erişteler eklenir. "
                      "\n\n3. Tuz, karabiber ve nane eklenir. 10 dakika daha pişirilir. Afyon yöresinde uzun erişteler atılır ki yerken sakallara değer, adı oradan gelir. Ancak suyu fazla olmadan yemeği de bazı yörelerde yapılır. "
                      "\n\n4. Çocuklar için de çorba tüketirken mercimeğe alışması için kolaylık sağlar."),
            ],
          ),
        ),
      ),
    );
  }
}
