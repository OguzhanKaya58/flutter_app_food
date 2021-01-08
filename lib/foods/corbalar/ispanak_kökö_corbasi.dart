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

class IspanakKokuCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ispanak Kökü Çorbası",
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
                imagePath: "images/Ispanak-Kökü-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı kadar ıspanak sapı&kökü"),
              FoodMaterial(name: "1 adet orta boy havuç"),
              FoodMaterial(name: "1 adet orta boy soğan"),
              FoodMaterial(name: "1,5-2 lt su"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "3-4 yemek kaşığı sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Terbiyesi için:"),
              FoodMaterial(name: "1 adet yumurta sarısı"),
              FoodMaterial(name: "2 yemek kaşığı yoğurt"),
              FoodMaterial(name: "1/2 (yarım) limonun suyu"),
              FoodMaterial(name: "2 yemek kaşığı un"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Bir tencerenin içine sıvı yağ koyulur ve ince ince doğranmış ıspanak saplarını, soğan ve havuç koyularak biraz sotelenir. "
                      "\n\n2. Daha sonra üzerine su ilave edilir ve kaynamaya bırakılır. "
                      "\n\n3. Bir kabın içinde yumurta sarısı, yoğurt, limon suyu ve un koyulur. "
                      "\n\n4. Pütürlük kalmayacak şekilde çırpılır ve kaynamakta olan çorbanın içine karıştırılarak dökülür. "
                      "\n\n5. Bir taşım kaynatıldıktan sonra servis edilir. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
