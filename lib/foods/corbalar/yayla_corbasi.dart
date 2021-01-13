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

class YaylaCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Yayla Çorbası",
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
                imagePath: "images/yayla.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 fincan pirinç (Türk kahvesi fincanı)"),
              FoodMaterial(name: "7 su bardağı su"),
              FoodMaterial(name: "1 su bardağı yoğurt"),
              FoodMaterial(name: "1 yumurta"),
              FoodMaterial(name: "Yarım fincandan biraz fazla un"),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "2 yemek kaşığı tereyağı"),
              FoodMaterial(name: "Tuz, Nane"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Su, sıvı yağ, tuz ve pirinçler tencereye alınır. Pirinçler yumuşayıncaya kadar kaynatılır. "
                      "\n\n2. Ayrı bir kasede yoğurt, yumurta ve un, 1 su bardağına yakın su ile birlikte iyice çırpılır. "
                      "\n\n3. Pirinçler yumuşayınca hızlıca karıştırarak yoğurtlu karışım çorbaya eklenir. Kaynayana kadar karıştırılır. Kaynayınca kısık ateşte 10-15 dk kaynatılır. Ara sıra karıştırmayı ihmal etmeyin. "
                      "\n\n4. Çorbamız piştikten sonra altı kapatılır. "
                      "\n\n5. Şık bir sunum olması açısından;  Çorba kaselere alınır. Ayrı bir yerde tereyağı kızdırılarak nane ile karıştırılır. Ve kaselerdeki çorbaların üzerinde gezdirilir. Kalan naneli tereyağını tenceredeki çorbaya koyup karıştırın. "
                      "\n\n6. Mis kokulu yayla çorbamız servise hazır. "),
            ],
          ),
        ),
      ),
    );
  }
}
