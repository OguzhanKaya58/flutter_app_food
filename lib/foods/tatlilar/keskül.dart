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

class Keskul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Keşkül",
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
                imagePath: "images/keskul.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "15dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "1 litre süt"),
              FoodMaterial(name: "1 su bardağı toz şeker"),
              FoodMaterial(name: "2 tepeleme yemek kaşığı nişasta"),
              FoodMaterial(name: "3 yemek kaşığı hindistan cevizi"),
              FoodMaterial(name: "3 yemek kaşığı toz antep fıstığı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tencereye süt, toz şeker, nişasta, hindistan cevizi ve Antep fıstığını alıp karıştıralım ocağın üzerine verip sürekli karıştırarak kaynayıncaya kadar pişirelim. "
                      "\n\n2. Koyulaşan tatlıyı kaselere boşaltıp soğutalım. "
                      "\n\n3. Üzerine Antep fıstığıyla süsleyelim. Afiyet olsun."),
            ],
          ),
        ),
      ),
    );
  }
}
