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

class BademliPilav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Bademli Pilav",
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
                imagePath: "images/bademli-pilav.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1,5 su bardağı pirinç"),
              FoodMaterial(name: "3 su bardağı tavuk suyu ya da su"),
              FoodMaterial(name: "Yarım çay bardağı badem"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "4 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Bir tutam maydanoz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Sıcak suda kabuklu bademler bir süre bekletilerek, kabukları soyulur. "
                      "\n\n2. Pilav tenceresinde, tereyağı ve sıvı yağ birlikte eritilir. "
                      "\n\n3. Kabukları soyulan bademler, yağda çok az kavrulur. "
                      "\n\n4. Üzerine ayıklanmış ve yıkanmış pirinç eklenerek, kavurmaya devam edilir. "
                      "\n\n5. Varsa tavuk suyu, eğer yoksa normal su ilavesi yapılıp tuzu eklenir ve ocağın en düşük derecesinde, yaklaşık 20 dakika pişmeye bırakılır. Normal su kullanılıyorsa, 1 tablet tavuk bulyon eklemek pilavınıza lezzet katacaktır. "
                      "\n\n6. Pilav pişmeye yakınken, ince ince doğranmış bir tutam maydanoz pilava eklenir. "
                      "\n\n7. Altı kapatılıp havlu kağıt serilerek, demlenmeye bırakılır. "),
            ],
          ),
        ),
      ),
    );
  }
}
