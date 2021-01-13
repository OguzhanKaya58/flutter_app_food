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

class FirindaTavukKanat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırında Tavuk Kanat",
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
                imagePath: "images/firinda-tavuk-kanat.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "50dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kg tavuk kanat"),
              FoodMaterial(name: "5 adet patates"),
              FoodMaterial(name: "1,5 tatlı kaşığı kırmızı toz biber"),
              FoodMaterial(name: "1 tatlı kaşığı biber salçası"),
              FoodMaterial(name: "Tuz, Karabiber"),
              FoodMaterial(name: "2 diş sarımsak"),
              FoodMaterial(name: "Sıvı yağ"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Mangal tadında fırında tavuk kanat ve patates tarifi için; ilk olarak tavuk kanatlarını güzelce yıkayıp, iyice suyunu süzdürelim. "
                      "\n\n2. Patateslerin kabuklarını soyalım ve dilimleyelim. "
                      "\n\n3. Tavuk kanatları bir kabın içerisine alalım ve baharatlarını ve sarımsağı da ezip ekleyelim. "
                      "\n\n4. Ardından güzelce elimizle karıştıralım. "
                      "\n\n5. Yağlı kağıt serili fırın tepsimize kanatları yan yana yerleştirelim. "
                      "\n\n6. Patatesleri de tuzlayıp yağlayalım ve onları da tavukların yanına yerleştirip, önceden ısıtmış olduğumuz 200 derece fırında tavuk ve patatesler kızarana kadar pişirelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
