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

class TavadaTavukBaget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tavada Tavuk Baget",
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
                imagePath: "images/tavada-tavuk-baget.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "5dk",
                cooking: "40dk",
              ),
              Materials(),
              FoodMaterial(name: "4-5 adet tavuk parçası (But baget)"),
              FoodMaterial(name: "2 adet orta boy kuru soğan"),
              FoodMaterial(name: "1 çorba kaşığı sıvı yağ"),
              FoodMaterial(name: "1 tatlı kaşığı kekik"),
              FoodMaterial(name: "Göz kararı tuz"),
              FoodMaterial(name: "Dilerseniz tavuk baharatı"),
              FoodMaterial(name: "Acı seviyorsanız pul biber"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tavuklarımızı yıkayıp suyunu süzelim, derin bir kabın içerisine alalım. "
                      "\n\n2. Kuru soğanlarımızı da temizleyip dörde bölelim, tavukların olduğu kaba koyalım. "
                      "\n\n3. Üzerlerine tüm baharatlarımızı, tuzu ve 1 kaşık yağı koyup iyice karıştıralım (Soğanları ve tavuk parçalarını zedelemeden) "
                      "\n\n4. Bütün malzemeler iyice karışıp tavuklar baharatlarla bulanınca hepsini düzgünce teflon tavaya yerleştirelim. "
                      "\n\n5. Tavamızın kapağını kapatalım ve kısık ateşte, hiç su eklemeden pişirelim. "
                      "\n\n6. Pişerken tavuklar kendi suyunu salacaktır. "
                      "\n\n7. Arada bir kapağını hiç açmadan tavayı sallarsanız yapışmazlar."
                      "\n\n8. Tavuklar pişince kapağını açın, hem suyunu çekmesini hem de biraz kızarmasını sağlayın, bu sırada soğanlar da karamelize olacaktır ki çok lezzetli olur."),
            ],
          ),
        ),
      ),
    );
  }
}
