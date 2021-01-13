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

class MulayimCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Mülayim Çorbası",
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
                imagePath: "images/mulayim-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "3 kaşık tepeleme un"),
              FoodMaterial(name: "1 bardak yoğurt"),
              FoodMaterial(name: "1 yumurta sarısı"),
              FoodMaterial(name: "Yarım limon"),
              FoodMaterial(name: "Yarım bulyon"),
              FoodMaterial(name: "Tuz, nane"),
              FoodMaterial(name: "2 yemek kaşığı teremyağ"),
              FoodMaterial(name: "1 tane sarımsak"),
              FoodMaterial(name: "6 -7 bardak su"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Tenceremize sıvı yağımızı koyuyoruz . "
                      "\n\n2. Unumuzu ilave ediyoruz fazla kavurmadan suyunu ilave ediyoruz. "
                      "\n\n3. Ayrı yerde terbiyesini yapıyoruz. "
                      "\n\n4. Yumurta sarısı, yarım limon, 1 bardak yoğurt, iyice çırpıp yavaş yavaş çorbamıza ilave ediyoruz. "
                      "\n\n5. Üzerine terem yağımızı tavada eritip naneyi koyuyoruz ve çorbamıza ilave ediyoruz."),
            ],
          ),
        ),
      ),
    );
  }
}
