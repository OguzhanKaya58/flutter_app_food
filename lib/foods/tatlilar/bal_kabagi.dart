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

class BalKabagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Bal Kabağı Tatlısı",
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
                imagePath: "images/kabak-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "1 saat",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kg bal kabağı"),
              FoodMaterial(name: "1 su bardağı şeker"),
              FoodMenuSubtitle(subTitleName: "Muhallebesi için:"),
              FoodMaterial(name: "1 lt süt"),
              FoodMaterial(name: "5 yemek kaşığı un"),
              FoodMaterial(name: "1 su bardağı toz şeker"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMenuSubtitle(subTitleName: "Tabanı için:"),
              FoodMaterial(name: "2 paket burçak bisküvi"),
              FoodMaterial(name: "2 yemek kaşığı oda sıcaklığında tereyağı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kabak tatlısı için; 1 kg kabak, 1 su bardağı şekere bir gece önceden yatırılıp, sabah kısık ateşte yumuşayana kadar pişirilip blendırdan geçirilir. "
                      "\n\n2. Muhallebi için; tereyağı ve vanilya haricindeki malzemeleri tencereye alınıp, kaynayıncaya kadar karıştırarak pişirin. "
                      "\n\n3. Kaynadıktan sonra 2 dakika daha pişirip, ocaktan alın ve tereyağıyla vanilya ilave edip karıştırın. "
                      "\n\n4. Alt taban için; 2 paket burçak bisküvi ve 2 yemek kaşığı oda sıcaklığında tereyağı yoğurup, kalıbın tabanına döşeyin. "
                      "\n\n5. Hazırladığınız muhallebiyi, sıcakken bisküvilerin üzerine dökün ve soğumaya bırakın. "
                      "\n\n6. İyice soğuduğuna emin olduktan sonra, kabak tatlısını da üzerine yayın. "
                      "\n\n7. Fındık ceviz ve tarçınla süsleyebilirsiniz. "
                      "\n\n8. Bir gece kalıptan çıkartmadan buzdolabında bekletirseniz, daha iyi sonuçlar elde edersiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
