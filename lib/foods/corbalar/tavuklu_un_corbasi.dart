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

class TavukluUnCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tavuklu Un Çorbası",
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
                imagePath: "images/tavuklu-un-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "20dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "Haşlanmış tavuk göğsü"),
              FoodMaterial(name: "3 kaşık kavrulmuş un"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "3 bardak tavuk suyu"),
              FoodMaterial(name: "3 bardak su"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Pulbiber"),
              FoodMaterial(name: "Nane (isteğe bağlı)"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tavuğu haşlayın. Unu bir tavada kavurun. Sürekli karışması gerekiyor. Ben yağ koymadan kavuruyorum yağlı kavurduğum zaman aynı lezzeti bulamıyorum. "
                      "\n\n2. Hafif renk değişikliğinde alıyorum unu ocaktan yakmamaya özen gösteriyorum. Haşlanmış tavuğu didin. Tencereye yağı koyup salçayı kavurun. "
                      "\n\n3. Kavrulan salçanın üzerine tavuk suyunu ve didilen tavukları ekleyin. 3 yemek kaşığı kavrulmuş unu soğuk suyla açıp tencereye ekleyin. "
                      "\n\n4. Birazda sıcak su ekleyin. Pulbiberini tuzunu ve nanesini ekleyip 10 dakika kadar altı kısık bir şekilde pişirin."),
            ],
          ),
        ),
      ),
    );
  }
}
