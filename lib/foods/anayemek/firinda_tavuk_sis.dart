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

class FirindaTavukSis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fırında Tavuk Şiş",
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
                imagePath: "images/firinda-tavuk-sis.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "2 saat 15dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kg kadar kemiksiz göğüs eti ya da pirzola"),
              FoodMenuSubtitle(subTitleName: "Marine için:"),
              FoodMaterial(name: "3 yemek kaşığı yoğurt"),
              FoodMaterial(name: "Yarım su bardağı sıvı yağ"),
              FoodMaterial(name: "5 diş sarımsak"),
              FoodMaterial(name: "Tuzi Kekik, Pulbiber, Kimyon"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Marine için gerekli malzemeleri güzelce çırparak hazırlayın. "
                      "\n\n2. Tavuk etlerini doğrayıp hazırladığınız sosun içine boşaltın ve güzelce karıştırın. "
                      "\n\n3. En az iki saat kadar karışımı buzdolabında bekletin. "
                      "\n\n4. Daha sonra tavukları çok sıkıştırmadan çöp şiş çubuklarına dizin. "
                      "\n\n5. Biz fotoğrafta görüldüğü gibi şişleri fırın kabına dizdik, böylelikle akan sulan kabın içinde toplandı. "
                      "\n\n6. Dilerseniz yağlı kağıt serilmiş tepsiye de dizebilirsiniz. "
                      "\n\n7. Fırını ızgara ayarına getirip çöp şişleri yerleştirin ve arada çevirerek her tarafını pişirin. "
                      "\n\n8. Yanında pilav ile ya da marul, domates, ketçap, mayonez ile dürüm yaparak servis edebilisiniz. Afiyet olsun."),
            ],
          ),
        ),
      ),
    );
  }
}
