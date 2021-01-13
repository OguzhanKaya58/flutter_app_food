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

class BiberliBulgurPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Biberli Bulgur Pilavı",
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
                imagePath: "images/biberli-bulgur-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "2 su bardağı bulgur"),
              FoodMaterial(name: "3-4 tane sivri biber"),
              FoodMaterial(name: "2-3 tane domates"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "1 tane bulyon (isteğe bağlı)"),
              FoodMaterial(name: "4 su bardağı sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName:
                  "1. Biberleri ve domatesleri küp küp doğrayın. "
                      "\n\n2. Tencerede önce biberleri sıvı yağda kavurun. "
                      "\n\n3. Daha sonra domatesi, salçayı ve tuzunu ekleyin. "
                      "\n\n4. Üzerine yaklaşık 4 su bardağı suyu ve bulyonu koyun. "
                      "\n\n5. Su kaynamaya başlayınca bulgurları ekleyin. "
                      "\n\n6. Üzerine isteğe bağlı nane serpip suyunu çekene kadar pişirin. Afiyet olsun. "
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
