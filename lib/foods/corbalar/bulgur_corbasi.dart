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

class BulgurCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bulgur Çorbası",
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
                imagePath: "images/bulgur-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı ince kısırlık bulgur"),
              FoodMaterial(name: "1 adet kuru soğan"),
              FoodMaterial(name: "2 adet orta boy domates"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "2 adet çarliston biber"),
              FoodMaterial(name: "1 adet et bulyon (isteğe bağlı)"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "9 su bardağı sıcak su"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Dereotu (isteğe bağlı)"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Bulgurları yıkayıp süzün.  "
                      "\n\n2. Bir tencereye sıvı yağı dökün. "
                      "\n\n3. İnce ince doğradığınız kuru soğanı üzerine ekleyip orta hararetli ateşte biraz kavurun. "
                      "\n\n4. Daha sonra ince ince doğradığınız biberleri ilave edip kavurmaya devam edin. "
                      "\n\n5. Rendelenmiş domatesleri ve domates salçasını da ekleyerek biraz kavurun. "
                      "\n\n6. Sonra üzerine bulguru ilave edip karıştırın. "
                      "\n\n7. Üzerine sıcak su, et bulyon ve tuzunu ekleyin. "
                      "\n\n8. Kısık ateşte bulgurlar pişene kadar kaynatın. "
                      "\n\n9. Servis tabağına aldıktan sonra üzerine dereotu serpin. AFİYET OLSUN. "),
            ],
          ),
        ),
      ),
    );
  }
}
