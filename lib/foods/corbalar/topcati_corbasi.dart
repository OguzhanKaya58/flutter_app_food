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

class TopcatiCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Topçata Çorbası",
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
                imagePath: "images/Topçata-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "6 su bardağı su"),
              FoodMaterial(name: "İri bulgur yarım çay bardağı"),
              FoodMaterial(name: "İnce bulgur yarım çay bardağı"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "1 demet maydanoz"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "1 su bardağı yoğurt"),
              FoodMaterial(name: "1 tane yumurta sarısı"),
              FoodMenuSubtitle(subTitleName: "Köftesi için:"),
              FoodMaterial(name: "200 gr dana kıyma"),
              FoodMaterial(name: "1 çay kaşığı tuz"),
              FoodMaterial(name: "1 çay kaşığı kimyon"),
              FoodMenuSubtitle(subTitleName: "Bulamak için:"),
              FoodMaterial(name: "Yarım su bardağı ince bulgur"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk önce köftesini hazırlanır. Bir kaseye dana kıyma ve kimyon, tuz alınarak karıştırılır ;-). Ardından nohut boyutunda yuvarlak yapılır. "
                      "\n\n2. Küçük tepsiye yarım su bardağı ince bulgur serpilir ve köfteler’in her yerine gelecek şekilde bulanır. "
                      "\n\n3. Su dolu kaynar tencereye hazırlanan köfteler ilave edilerek 15 dk pişirilir. "
                      "\n\n4. Piştikten sonra ince ve iri bulgur ilave edilir ve pişirilir. "
                      "\n\n5. Pişme esnasında sosu hazırlanır. Bir kasede yoğurt ve yumurta sarısı karıştırılır. "
                      "\n\n6. Hazır olan çorbanın suyundan bu sosa biraz ilave edilir, çorba kesilmesin diye. "
                      "\n\n7. Altı kapatılan tencereye sostan ilave edilerek karıştırılır. "
                      "\n\n8. 1 demet maydanoz doğranır ve altı kapatılan tencereye ilave edilir. Ardından afiyetle servise sunulur. "),
            ],
          ),
        ),
      ),
    );
  }
}
