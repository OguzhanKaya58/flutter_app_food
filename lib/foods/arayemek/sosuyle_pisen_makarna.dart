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

class SosuylaPisenMakarna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Sosuyla Pişen Makarna",
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
                imagePath: "images/Sosuyla-Pişen-Makarna.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "5dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "1 paket makarna"),
              FoodMaterial(name: "3 orta boy domates"),
              FoodMaterial(name: "1 orta boy kuru soğan"),
              FoodMaterial(name: "1 diş sarımsak"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 yemek kaşığı biber salçası"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 tatlı kaşığı tereyağ"),
              FoodMaterial(name: "5,5 su bardağı su"),
              FoodMaterial(name: "Tuz, Karabiber, Pulbiber, Kekik"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle uygun geniş tavaya yada tencereye yağı ekleyelim. "
                      "\n\n2. Üzerine yemeklik doğranmış soğanı ve sarımsağı ekleyip kavuralım. "
                      "\n\n3. Üzerine salçayı(biber salçası sevmiyorsanız yerine 2 yemek kaşığı domates ekleyebilirsiniz) "
                      "\n\n4. Karıştıralım ve kabuklarını soyup küp küp doğradığımız domatesi ekleyelim karıştıralım. "
                      "\n\n5. Kapağını kapatalım domatesler yumuşayana kadar pişirelim. "
                      "\n\n6. Hazır olan sosumuzun üzerine baharatları ekleyip karıştıralım. "
                      "\n\n7. Sosumuzu üzerine makarnayı ekleyelim karıştıralım suyunu ekleyelim. "
                      "\n\n8. Kapağını kapatalım orta ateşte suyunu çekene kadar pişirelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
