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

class IspanakYemegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ispanak Yemeği",
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
                imagePath: "images/ıspanak-yemegi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kg ıspanak"),
              FoodMaterial(name: "1 adet kuru soğan"),
              FoodMaterial(name: "Yarım çay bardağı pirinç"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "Tuz, Karabiber, Pul Biber"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Başlangıç olarak ıspanakları temizleyelim. "
                      "\n\n2. Diğer taraftan soğanı  doğrayıp sıvı yağda pembeleşene dek kavuralım. "
                      "\n\n3. Salçayı ilave edelim. "
                      "\n\n4. Ardından ıspanakları da ekleyelim ve ıspanaklar eriyinceye kadar kavuralım. "
                      "\n\n5. Yarım çay bardağı yıkanmış pirinci, tuz ve baharatları da ilave edelim. "
                      "\n\n6. 1 su bardağı kaynar suyu da ekleyerek tencerenin kapağını kapatalım, kısık ateşte pirinçler yumuşayana dek pişirelim. "
                      "\n\n7. Yanında yoğurtla servis edelim, afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
