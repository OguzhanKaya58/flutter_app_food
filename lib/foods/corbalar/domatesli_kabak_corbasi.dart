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

class DomatesliKabakCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Domatesli Kabak Çorbası",
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
                imagePath: "images/domatesli-kabak-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 adet orta kabak"),
              FoodMaterial(name: "1 adet orta boy patates"),
              FoodMaterial(name: "1 adet orta boy soğan"),
              FoodMaterial(name: "5 adet orta boy domates"),
              FoodMaterial(name: "1 küçük yeşil soğan"),
              FoodMaterial(name: "1-2 dal maydanoz"),
              FoodMaterial(name: "1 adet tavuk bulyon tablet"),
              FoodMaterial(name: "1 çorba kaşığı tereyağ"),
              FoodMaterial(name: "1 çorba kaşığı salça"),
              FoodMaterial(name: "Kuru nane, Tuz, Pulbiber, Su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Malzemelerimiz güzelce yıkanıp kabukları soyularak büyük parçalar halinde tencereye alınır ve üzeri geçene kadar su ile kaynatılır. "
                      "\n\n2. Kaynayan ve yumuşayan malzemelerimiz blender yardımı ile ezilir ve pürüzsüz hale getirilir. "
                      "\n\n3. Tenceremiz tekrar ocağa alınarak yağ ve baharatları eklenerek 5 dakika daha kaynatılır. Gerekirse su eklenir ve üzerinde oluşan köpükler alınarak servis edilir. "
                      "\n\n4. İçersinde kabak olduğu belli olmayan domates çorbası tadındaki çorbamıza dilerseniz üzerine kaşar peyniri ilave edilerek te servis edilebilir. "),
            ],
          ),
        ),
      ),
    );
  }
}
