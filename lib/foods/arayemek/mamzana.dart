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

class Mamzana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mamzana",
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
                imagePath: "images/Mamzana.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "0",
              ),
              Materials(),
              FoodMaterial(name: "2 adet közlenmiş patlıcan"),
              FoodMaterial(name: "2 adet közlenmiş kırmızı kapya biber"),
              FoodMaterial(name: "2-3 adet yeşil sivri biber"),
              FoodMaterial(name: "1 adet orta boy domates(kabuğu soyulmuş)"),
              FoodMaterial(name: "İki tutam maydanoz"),
              FoodMaterial(name: "2 diş sarımsak"),
              FoodMaterial(name: "Zeytinyağ"),
              FoodMaterial(name: "Sirke(isteğe bağlı)"),
              FoodMaterial(name: "Tuz-pulbiber"),
              FoodMaterial(name: "Üzeri için istenirse sarımsaklı yoğurt"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tüm sebzeler ince ince doğranarak uygun bir karıştırma kabına alınır. "
                      "\n\n2. Sarımsak az tuzla ezilerek karışıma eklenir. "
                      "\n\n3. eytinyağ-pulbiber-tuz ve isteğe göre sirke ile tadı ayarlandıktan sonra arzuya göre servis edilir. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
