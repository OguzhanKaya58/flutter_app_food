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

class BiskuviliIrmikTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Bisküvili İrmik Tatlısı",
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
                imagePath: "images/biskuvili-irmik-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 litre süt"),
              FoodMaterial(name: "12 yemek kaşığı toz şeker"),
              FoodMaterial(name: "8 yemek kaşığı irmik"),
              FoodMaterial(name: "12 adet kakaolu veya sade bisküvi"),
              FoodMaterial(name: "1 paket vanilya"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Derin bir tencere içine 1 litre süt dökün. "
                      "\n\n2. Üzerine 12 yemek kaşığı toz şeker ve 8 yemek kaşığı irmik ekleyip, ocak üzerine alın. "
                      "\n\n3. Sürekli karıştırarak, koyu bir kıvam alana kadar pişirin. "
                      "\n\n4. İrmikli muhallebi piştikten sonra ocağın altını kapatın. "
                      "\n\n5. İçine 1 paket vanilya ekleyip, karıştırın. "
                      "\n\n6. Diğer tarafta orta boy bir dikdörtgen borcamın içini soğuk su ile ıslatın. "
                      "\n\n7. İrmikli muhallebinin yarısını borcam içine döküp, yayın. "
                      "\n\n8. Üzerine 12 adet bisküviyi yan yana dizin. Kalan irmikli muhallebiyi de bisküvilerin üzerine döküp, yayın. "
                      "\n\n9. Oda ısısında ılımaya bırakın. "
                      "\n\n10. Daha sonra bisküvili irmik tatlısının kıvam alması için buzdolabında 2-3 saat kadar soğumaya bırakın "),
            ],
          ),
        ),
      ),
    );
  }
}
