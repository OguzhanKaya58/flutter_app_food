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

class TavukPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tavuk Pane",
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
                imagePath: "images/Tavuk-Pane.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "4 tane baget"),
              FoodMaterial(name: "2 yumurta"),
              FoodMaterial(name: "1 yemek kaşığı irmik"),
              FoodMaterial(name: "1 yemek kaşığı galeta unu"),
              FoodMaterial(name: "1 yemek kaşığı mısır unu"),
              FoodMaterial(name: "Pul biber"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Kızartmak için:"),
              FoodMaterial(name: "Sıvıyağ"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tavuk bagetleri yıkayıp tuzlu suda haşlayalım. Derilerini çıkaralım. "
                      "\n\n2. Yumurta, pul biber ve tuzu çırpalım. "
                      "\n\n3. Galeta unu, mısır unu ve irmiği karıştıralım. "
                      "\n\n4. Bagetleri önce yumurtaya sonra irmikli karışıma bulayıp yağda arkalı önlü kızartalım. "
                      "\n\n5. Afiyet olsun :) "),
            ],
          ),
        ),
      ),
    );
  }
}
