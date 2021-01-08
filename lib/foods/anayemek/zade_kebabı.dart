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

class ZadeKebabi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zeda Kebakı",
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
              ImagePath(imagePath: "images/zade-kebap.jpg",),
              Preparation(
                howManyPerson: "4-6",
                preparation: "20dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "250-300 gr kuşbaşı et"),
              FoodMaterial(name: "1 dolu tatlı kaşığı salça"),
              FoodMaterial(name: "1 çay kaşığı tuz"),
              FoodMaterial(name: "1 fiske karabiber"),
              FoodMaterial(name: "1 adet iri sulu domates"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "2 adet biber"),
              FoodMaterial(name: "2 adet patates"),
              FoodMaterial(name: "2 çorba kaşığı sıvı yağ (Etli Harç İçin)"),
              FoodMaterial(name: "4 diş sarımsak"),
              FoodMaterial(name: "4 adet uzun patlıcan"),
              FoodMaterial(name: "Sıvıyağ (Kızartmak İçin)"),
              FoodMaterial(name: "Kaşar peyniri rendesi (Üzerine)"),
              Fabrication(),
              Recipe(recipeName: "1. Et harlı ateşe konulur suyunu salana kadar çevrilir ve suyunu salınca üzerine 1-1. 5 bardak su konulur suyunu çekip yumuşayana kadar pişirilir. Düdüklüde kısa sürede pişirebilirsiniz \n\n2. Suyunu iyice çekince sıvı yağ konulur ve 1-2 tur çevrilip yemeklik doğranmış soğan, sarımsak ve biberler eklenip yumuşayana kadar kavrulur. \n\n3. Salça konulup 1 tur çevrilir. Ben yazdan hazırladığım domates biber sostan 1 kaşık koydum. Rendelenmiş domates eklenip suyunu çekene kadar pişirilir. \n\n4. Bu sırada patatesler küp küp doğranıp kızartılır. \n\n5. Ardından patlıcanlar uzun şekilde dilimlenip kızartılır ve havlu peçete üzerine çıkarılır. \n\n6. Suyunu çeken etli harcın altı kapatılır. Bir fiske karabiber ve tuzu serpilir. \n\n7. Kızartılmış patatesler eklenip karıştırılır 10 dakika dinlendirilir. \n\n8. Bu arada patlıcanlar küçük güveç kaplarına birbirine çapraz gelecek şekilde dizilir ve uçları sarkıtılır. Hepsine 1 fiske tuz serpilir. \n\n9. Etli harçtan konulup kapatılır hepsi bitince üzerlerine bolca kaşar peyniri rendesi konulur. \n\n10. Önceden ısıtılmış 180 derece fırında kaşarlar eriyip kızarana kadar pişirilir.",),
            ],
          ),
        ),
      ),
    );
  }
}
