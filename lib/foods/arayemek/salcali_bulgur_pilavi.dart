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

class SalcaliBulgurPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Salçalı Bulgur Pilavı",
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
                imagePath: "images/salcali-bulgur-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "1,5 su bardağı bulgur"),
              FoodMaterial(name: "3,5 su bardağı sıcak su"),
              FoodMaterial(name: "Yarım yemek kaşığı biber salçası"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(
                  name: "1 tavuk bulyon (isteğe bağlı koymayabilirsiniz)"),
              FoodMaterial(name: "2 yemek kasığı tereyağı"),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Tereyağ ve sıvı yağ tencereye alınır. "
                      "\n\n2. Tereyağ eriyince salçalar koyulur, karıştırılır ve güzelce kavrulur. "
                      "\n\n3. Üzerine yıkanmış pilavlık bulgur koyulur, karıştırılır. "
                      "\n\n4. Tuz ve tercihe göre bulyon eklenir. Eğer hazırda tavuk ya da et suyunuz varsa onunla da yapabilirsiniz, daha lezzetli olur benim yoktu bulyon eritip kullandım. "
                      "\n\n5. Sonra sıcak suyu eklenir ve pişirilir. (tavuk suyu varsa su miktarını ona göre ayarlayın) "
                      "\n\n6. Pilavınızın altını kapattıktan sonra üzerine kağıt havlu örterek 10 dakika kadar demlenmeye bırakalım. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
