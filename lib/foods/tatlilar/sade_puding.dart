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

class SadePuding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Sade Puding",
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
                imagePath: "images/sade-puding.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "3 su bardağı süt"),
              FoodMaterial(name: "1,5 çay bardağı şeker"),
              FoodMaterial(name: "1,5 yemek kaşığı nişasta"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Önce sütü puding yapmak için uygun olan bir tencereye döküyoruz. "
                      "\n\n2. Sonra şekeri nişastayı ve unu ekleyip orta ateşte kaynayıncaya kadar karıştırıyoruz. "
                      "\n\n3. Kaynadıktan sonra vanilya ve tereyağını ilave edip biraz daha karıştırıyoruz ve altını kapatıyoruz. "
                      "\n\n4. Kaselere döküyoruz. Biraz soğuduktan sonra buzdolabında 1 -2 saat beklemiyoruz. "
                      "\n\n5. İsterseniz üzerine meyve, rendelenmiş çikolata veya renkli süslerden koyup servis edebilirsiniz. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
