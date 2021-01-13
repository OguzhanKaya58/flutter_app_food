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

class TavukCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tavuk Çorbası",
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
                imagePath: "images/tavuk-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "1-2",
                preparation: "5dk",
                cooking: "5dk",
              ),
              Materials(),
              FoodMaterial(name: "1 Tavuk göğsü veya but 2 tane "),
              FoodMaterial(name: "2 yemek kaşıgı tereyağı"),
              FoodMaterial(name: "2 yemek kaşığı un"),
              FoodMaterial(name: "2 yemek kaşığı şehriye"),
              FoodMaterial(name: "Yarım limon"),
              FoodMaterial(name: "Tuz, Karabiber, Pulbiber, Kekik"),
              Fabrication(),
              Recipe(
                  recipeName:
                  "1. Etimizi haşlıyoruz. "
                      "\n\n2. Ne çok ufak ne de çok büyük olmak şartıyla didikliyoruz. "
                      "\n\n3. Tenceremize 1 yemek kaşığı tereyağı eritip kızdırıyoruz. "
                      "\n\n4. 2 yemek kaşığı unu koyup kavuruyoruz. "
                      "\n\n5. Ardından şehriyeleri ilave edip sonra da haşladığımız tavukların suyunu koyup güzelce karıştırıyoruz. "
                      "\n\n6. 1-2 taşım kaynadıktan sonra yarım limon sıkıp didiklediğimiz tavukları ilave ediyoruz. "
                      "\n\n7. O bir tarafta kaynarken biz ayrı bir tavada 1 yemek kaşığı tereyağı tuz, pul biber, karabiber ve kekik ilave edip kızdırıp çorbamıza ekliyoruz. "
                      "\n\n8. 1-2 taşım daha kaynadıktan sonra servis yapabilirsiniz."),
            ],
          ),
        ),
      ),
    );
  }
}
