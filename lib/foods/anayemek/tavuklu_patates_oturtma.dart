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

class TavukluPatatesOturtma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tavuklu Patates Oturtma",
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
              ImagePath(imagePath: "images/tavuklu-patates-oturtma.jpg",),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "40dk",
              ),
              Materials(),
              FoodMaterial(name: "1/2 (yarım) kg tavuk"),
              FoodMaterial(name: "6 büyük boy patates"),
              FoodMaterial(name: "1 küçük soğan"),
              FoodMaterial(name: "3 büyük diş sarımsak"),
              FoodMaterial(name: "1 yeşil 1 kapya biber"),
              FoodMaterial(name: "1 domates"),
              FoodMaterial(name: "Bir tutam maydanoz"),
              FoodMaterial(name: "1 yemek kaşığı Salça"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "1 tatlı kaşığı pulbiber"),
              FoodMaterial(name: "1 çay bardağı sıcak su"),
              Fabrication(),
              Recipe(recipeName: "1. Tencereye önce tavuklar dizilir. "
                  "\n\n2. Üzerine yuvarlak ve iri doğranan patatesler dilimlenir. "
                  "\n\n3. Soğan ve sarımsaklar küçük küçük doğranır ve sırasıyla biberler domates eklenir. "
                  "\n\n4. Son olarak maydanoz eklendikten sonra bir kapta salça su ve baharatlar sos haline getirilip tencereye ilave edilir. "
                  "\n\n5. Ocağın orta gözünde yemek kaynayana kadar orta ateşte daha sonra kısık ateşte patatesin cinsine göre 40-45 dk pişirilir. "
                  "\n\n6. Biraz dinlendikten sonra servis edilebilir. Afiyet olsun",),
            ],
          ),
        ),
      ),
    );
  }
}
