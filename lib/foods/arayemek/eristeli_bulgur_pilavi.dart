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

class EristeliBulgurPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Erişteli Bulgur Pilavı",
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
                imagePath: "images/eristeli-bulgur-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "5dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "1 çay bardağı erişte"),
              FoodMaterial(name: "2 çay bardağı pilavlık bulgur"),
              FoodMaterial(name: "1 yemek kaşığı tereyağ"),
              FoodMaterial(name: "2-3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "5 çay bardağı sıcak su"),
              FoodMaterial(name: "1 adet knorr bulyon"),
              FoodMaterial(name: "4 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "İsteğe göre tavuk suyu kullanılabilir"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. 2-3 yemek kaşığı sıvı yağ tencereye alınır üzerine erişte konulur ve rengi dönene kadar kavrulur. "
                      "\n\n2. Pilavlık bulgur ve tereyağ konulup bir iki tur çevrilir. "
                      "\n\n3. Sıcak suda knorr eritilir ve pilava eklenir. "
                      "\n\n4. Karıştırılıp kaynamaya bırakılır. "
                      "\n\n5. İsteğe göre 1 tatlı kaşığı kaşığı toz çeşni de eklenebilir. "
                      "\n\n6. Knorr veya çeşni tuzlu olduğu tuz atmadım siz isteğe göre ayarlama yapabilirsiniz. "
                      "\n\n7. Kaynamaya başlayınca kısık ateşte suyunu tamamen çekene kadar pişirilir. "
                      "\n\n8. Piştikten sonra bir kere karıştırılır ve kapağı kapatılır. "
                      "\n\n9. 10-15 dakika dinlendirildikten sonra servis edilir. "),
            ],
          ),
        ),
      ),
    );
  }
}
