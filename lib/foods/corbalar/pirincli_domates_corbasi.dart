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

class PirincliDomatesCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Pirinçli Domates Çorbası",
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
                imagePath: "images/Pirinçli-Domates-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "2 yemek kaşığı un"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "Yarım kuru soğan"),
              FoodMaterial(name: "1 kapya biber"),
              FoodMaterial(name: "5 domates"),
              FoodMaterial(name: "Tuz ,karabiber, kırmızı biber"),
              FoodMaterial(name: "2 yemek kaşığı pirinç"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. 2 yemek kaşığı unu ,1 yemek kaşığı tereyağında kavurdun. "
                      "\n\n2. Yarım kuru soğan 4-5 domatesi ve 1 kırmızı biberi kesip koydun. "
                      "\n\n3. Sonra rondonun kesici çubuğunu kullanarak püre haline getirdin. "
                      "\n\n4. 2 yemek kaşığı pirinci yıkayıp ekledim. Karabiber tuz kırmızı biber de koydun. "
                      "\n\n5. Üzerine su ekleyin. Pirinç pişene kadar kaynattın. "
                      "\n\n6. Ekmek dilimlerini zeytinyağı ve kekik ile kavurdun. "
                      "\n\n7.  Kaşar rendesi ve kıtır ekmek ile servis yapın. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
