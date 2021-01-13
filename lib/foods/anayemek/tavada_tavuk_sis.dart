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

class TavadaTavukSis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tavada Tavuk Şiş",
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
                imagePath: "images/tavada-tavuk-sis.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "15dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "2 parça tavuk göğsü"),
              FoodMaterial(name: "2 parça kemiksiz tavuk pirzola)"),
              FoodMenuSubtitle(subTitleName: "Marine için:"),
              FoodMaterial(name: "3 yemek kaşığı yoğurt"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "2 diş rendelenmiş sarımsak"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Kekik"),
              FoodMaterial(name: "Kırmızı toz biber"),
              FoodMenuSubtitle(subTitleName: "Kızartmak için:"),
              FoodMaterial(name: "1 su bardağı yudum sıvı yağ"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Uygun kaba bütün sos malzemelerini alın ve karıştırın. "
                      "\n\n2. Küp şeklinde doğranmış etleri ilave edin ve güzelce karıştırın. "
                      "\n\n3. Kabın üzerini streçleyip 2 saate yakın buzdolabında beklettin. "
                      "\n\n4. Marine olmuş tavukları çöp şişelere dizin."
                      "\n\n5. Uygun bir tavaya Yudum Ayçiçek yağını alın ve kızdırın. Tavukları içerisinde arkalı önlü kızartın."),
            ],
          ),
        ),
      ),
    );
  }
}
