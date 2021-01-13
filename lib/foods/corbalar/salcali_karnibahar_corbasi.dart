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

class KarnibaharCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Karnıbahar Çorbası",
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
                imagePath: "images/salcali-karnibahar-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "1-2",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 orta boy patates"),
              FoodMaterial(name: "Patatesin iki katı kadar karnabahar"),
              FoodMaterial(name: "1 küçük soğan"),
              FoodMaterial(name: "1 büyük diş sarımsak kaya tuzu"),
              FoodMaterial(name: "Yarım çay kaşığı pul biber"),
              FoodMaterial(name: "Yarım çay kaşığı kekik"),
              FoodMaterial(name: "Yarım çay kaşığı kimyon"),
              FoodMaterial(name: "1 çay kaşığı nane"),
              FoodMaterial(name: "1 çay kaşığı sumak"),
              FoodMaterial(name: "1 çay kaşığı zerdeçal"),
              FoodMaterial(name: "1 yemek kaşığı zeytinyağı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Patates karnabahar soğan ve sarımsağı küçük küçük doğrayıp tencereye alalım. "
                      "\n\n2. Üzerini kaplayacak kadar su koyalım.  Kıvamı koyu olursa daha sonra su ilave edebilirsiniz. "
                      "\n\n3. Kaynamaya başladıktan sonra kısık ateşte patates ve karnabahar yumuşayana kadar pişirelim. "
                      "\n\n4. Daha fazla pişirmeyin ve tencerenin kapağı kapalı olsun ki vitaminler uçmasın. "
                      "\n\n5. Piştikten sonra yağı ve baharatları direk içine atalım (yağı ve baharatları kesinlikle kızdırmıyoruz pişirmiyoruz yakmıyoruz☺️ vitaminleri gider yoksa) "
                      "\n\n6. Hepsini blenderden geçiriyoruz istediğimiz kadar kaya tuzu ilave ediyoruz. "
                      "\n\n7. Lezzetli sağlıklı alkali detoks çorbamız hazır. "),
            ],
          ),
        ),
      ),
    );
  }
}
