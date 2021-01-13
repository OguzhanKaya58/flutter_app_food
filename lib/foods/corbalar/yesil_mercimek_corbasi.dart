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

class YesilMercimekCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Yeşil Mercimek Çorbası",
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
                imagePath: "images/Yeşil-Mercimek-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "30dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı yeşil mercimek (haşlanmış)"),
              FoodMaterial(name: "2 adet soğan"),
              FoodMaterial(name: "1 çay bardağı arpa şehriye"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 küçük boy havuç"),
              FoodMaterial(name: "1 tatlı kaşığı nane"),
              FoodMaterial(name: "Yeşil mercimek suyu"),
              FoodMaterial(name: "7 su bardağı sıcak su"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              Fabrication(),
              Recipe(
                  recipeName: "1. Yeşil mercimek 1 litre su ile haşlanır.  "
                      "\n\n2. Mercimekler yumuşadıktan sonra dağılmasına izin vermeden ocaktan alınır. "
                      "\n\n3. Suyu ayrı bir kaba süzülür. "
                      "\n\n4. Tencereye sıvı yağ alınır. "
                      "\n\n5. Küçük doğranmış soğan eklenerek kavrulur. "
                      "\n\n6. Salça eklenerek kavurmaya devam edilir. "
                      "\n\n7. Havuç ince ince doğrandıktan sonra tencereye alınır, karıştırılır. "
                      "\n\n8. Arpa şehriye eklenerek kavurma işlemine devam edilir. "
                      "\n\n9. Son olarak 1 tatlı kaşığı kuru nane ilave edilir. "
                      "\n\n10. Süzmüş olduğumuz mercimek suyuna 1,5 litreden biraz az olacak şekilde su eklenir tencereye alınır. "
                      "\n\n11. Kaynadıktan sonra mercimekler ilave edilir. "
                      "\n\n12. Havuçlar yumuşayana kadar pişirilir. "
                      "\n\n13. Son olarak tuzu eklenir ve ocaktan alınır. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
