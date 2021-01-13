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

class EristePilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Erişte Pilavı",
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
                imagePath: "images/eriste-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "2 kase ev yapımı erişte"),
              FoodMaterial(name: "2 kaşık sıvı yağ"),
              FoodMaterial(name: "1 kaşık tereyağ"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Şimdi önce tencereye yağımızı erişteyi koyup kavurmaya başlıyoruz. "
                      "\n\n2. Sonra tereyağını koyuyoruz. "
                      "\n\n3. Kısık ateşte yoksa yanar kızarmaya başlayan erişteye ılık olan suyumuzu döküyoruz. "
                      "\n\n4. Biraz üstünü geçecek şekilde ve pilav gibi suyunu çekmesini bekliyoruz. "
                      "\n\n5. Suyunu çeken eriştemiz hazır, biraz dinlendikten sonra servis edebilirsiniz. Afiyet olsun."),
            ],
          ),
        ),
      ),
    );
  }
}
