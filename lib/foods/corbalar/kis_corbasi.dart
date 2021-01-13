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

class KisCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Kış Çorbası",
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
                imagePath: "images/Kış-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMaterial(name: "1 adet küçük brokoli"),
              FoodMaterial(name: "1 adet pırasa"),
              FoodMaterial(name: "1 adet havuç"),
              FoodMaterial(name: "1 adet kırmızı biber"),
              FoodMaterial(name: "1 adet domates"),
              FoodMaterial(name: "2-3 diş sarımsak"),
              FoodMaterial(name: "Tuz, Karabiber"),
              FoodMaterial(name: "Bir tutam dereotu"),
              FoodMenuSubtitle(subTitleName: "Kıvamı İçin:"),
              FoodMaterial(name: "1 yemek kaşığı dolusu tereyağı"),
              FoodMaterial(name: "2 yemek kaşığı un"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Bütün sebzeleri temizleyip yıkayalım. İrice doğrayıp tencereye alalım. "
                      "\n\n2. Üzerine 8-9 su bardağı su ilave edelim. Et suyu ya da tavuk suyu olursa daha lezzetli olur. "
                      "\n\n3. Tuzunu ve karabiberini de katıp sebzeler yumuşayıncaya kadar pişirelim. "
                      "\n\n4. Tereyağında unun kokusu çıkana kadar kavuralım. "
                      "\n\n5. Kavurduğumuz unu sebzelerin içine alıp blenderden geçirelim. "
                      "\n\n6. İnce kıydığımız dereotunu da ilave edelim. "
                      "\n\n7. Çorbamızı limon eşliğinde servis edelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
