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

class SutluUnHelvasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sütlü Un Helavası",
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
                imagePath: "images/Sütlü-Un-Helvası.jpg",
              ),
              Preparation(
                howManyPerson: "2-3",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "125 gr tereyağı ya da margarin"),
              FoodMaterial(name: "1 su bardağı un"),
              FoodMaterial(name: "1 su bardağı süt"),
              FoodMaterial(name: "3/4 su bardağı şeker"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Soğuk sütü bir kasenin içine alıp şekeri karıştırıp eritiyoruz. "
                      "\n\n2. Bir tavada yağı eritip unu ekliyoruz. Kısık ateşte rengi koyulaşana kadar kavuruyoruz. Rengi kahverengiye dönünce sulandığını göreceksiniz. "
                      "\n\n3. Bu aşamada sütlü şerbeti ekleyip kaşığa yapışmayacak kıvama gelinceye kadar karıştırıp söndürüyoruz. "
                      "\n\n4. Ben dondurma kaşığıyla şekil verdim. Açıkçası soğuyana kadar da bekleyemedim. Kaşıkla servis tabağına alabilirsiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
