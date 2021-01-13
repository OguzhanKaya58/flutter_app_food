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

class FirindaTavukPirzola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırında Tavuk Pirzola",
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
                imagePath: "images/Fırında-Tavuk-Pirzola.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kilo tavuk pirzola"),
              FoodMaterial(name: "3 yemek kaşığı zeytinyağı"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "1 tatlı kaşığı toz biber"),
              FoodMaterial(name: "1 tatlı kaşığı kekik"),
              FoodMaterial(name: "1 tatlı kaşığı kimyon"),
              FoodMaterial(name: "1 çay kaşığı köri"),
              FoodMaterial(name: "1 su bardağı galeta unu "),
              FoodMaterial(name: "1 yumurta"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle, tavuk pirzola yıkayıp süzgeçten geçirdim. "
                      "\n\n2. Zeytinyağı, tuz, toz biber, kekik, kimyon ve köri ekleyip iyice harmanladığımız tavuk pirzola, dolapta 2 saat dinlendirin. "
                      "\n\n3. Bir kasede 1 yumurtayı iyice çırpın. "
                      "\n\n4. 1 su bardağı galeta ununu yayvan bir kapa koyalım. "
                      "\n\n5. Dolapta dinlenen tavuk pirzola ya çırpılan yumurtayı döküp karıştırın ( yada tek tek tavukları bulayın. Ben harcın içine döktüm). "
                      "\n\n6. Sonra galeta unu na bulayıp, yağlı kağıt serili fırın tepsisine koyup 20, 25 dk pişirelim. "
                      "\n\n7. Çok hafif ve lezzetli bir tarif dışı çıtır çıtır. İçi pamuk gibi yumuşak. Şimdiden afiyetler olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
