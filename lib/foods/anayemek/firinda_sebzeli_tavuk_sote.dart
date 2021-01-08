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

class FirindaSebzeliTavukSote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fırında Sebzeli Tavuk Sote",
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
                imagePath: "images/Fırında_sebzeli_tavuk.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "20dk",
                cooking: "45dk",
              ),
              Materials(),
              FoodMaterial(name: "2 parça tavuk göğüs eti"),
              FoodMaterial(name: "1 tane patlıcan"),
              FoodMaterial(name: "2 tane patates"),
              FoodMaterial(name: "4-5 domates"),
              FoodMaterial(name: "2-3 yeşil biber"),
              FoodMaterial(name: "2 yemek kaşığı margarin"),
              FoodMaterial(name: "Tuz-karabiber"),
              FoodMaterial(name: "Kekik- köri"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle fırın ısıtılır. Margarin borcama koyulur, fırına sürülüp erimesi beklenir. "
                      "\n\n2. Bu arada sebzeler ( domates hariç) et küp küp doğranır. "
                      "\n\n3. Eriyen margarinin üzerine doğranan sebzeler ve tavuk eti koyulur. Tuz ve baharatlar eklenir. ( istediğiniz baharatları kullanabilirsiniz) sıcak fırına verilir. "
                      "\n\n4. Yaklaşık 40 dk. Pişirilir. Domatesler teker şeklinde kesilir ve pişen etlerin üzerine dizilir, bir bardakta su eklenir. "
                      "\n\n5. Tekrar domatesler pişene kadar fırına sürülür. Afiyetle "),
            ],
          ),
        ),
      ),
    );
  }
}
