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

class EzogelinCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ezogelin Çorbası",
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
                imagePath: "images/ezogelin-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı kırmızı mercimek"),
              FoodMaterial(name: "1.5 yemek kaşığı bulgur"),
              FoodMaterial(name: "1.5 yemek kaşığı pirinç"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "2-3 diş sarımsak"),
              FoodMaterial(name: "4-5 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 tatlı kaşığı biber salçası"),
              FoodMaterial(name: "1 adet knorr tavuk bulyon"),
              FoodMaterial(name: "8 su bardağı su"),
              FoodMaterial(name: "Yarım limon suyu"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Baharatları:"),
              FoodMaterial(name: "1 çay kaşığı pul biber"),
              FoodMaterial(name: "1 çay kaşığı kekik"),
              FoodMaterial(name: "1 çay kaşığı kimyon"),
              FoodMaterial(name: "1 tatlı kaşığı nane"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle bulgur ve pirinç süzgeçe alınıp yıkanır ufak bir tencereye alınır üzerine 2 su bardağı su konulur ve kabarıp şişmesi için haşlanır. "
                      "\n\n2. Çorba için tencereye 4-5 yemek kaşığı sıvı yağ konur. 1 adet soğan ve sarımsak soyulup minik minik doğranır ve kısık ateşte yakmadan yumuşatılıp kavrulur. "
                      "\n\n3. Soğanlar yumuşadıktan sonra salçalar ilave edilir bir iki tur karıştırılır ve suyu konulur. "
                      "\n\n4. Su kaynamaya başladıktan 2 dakika sonra yıkanmış mercimek ve haşlanmış bulgur ile pirinçte üzerine ilave edilir. "
                      "\n\n5. Kaynamaya başlayınca kısık ateşte pişmeye bırakılır. "
                      "\n\n6. 5 dakika sonra tam verdiğim ölçü işe baharatlar ilave edilip karıştırılır. "
                      "\n\n7. 25-30 dakika kısık ateşte çorba pişmeye bırakılır. "),
            ],
          ),
        ),
      ),
    );
  }
}
