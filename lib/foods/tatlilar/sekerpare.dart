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

class Sekerpare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Şekerpare",
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
                imagePath: "images/Şekerpare.webp",
              ),
              Preparation(
                howManyPerson: "8-10",
                preparation: "15dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Hamuru İçin:"),
              FoodMaterial(name: "250 gram tereyağı"),
              FoodMaterial(name: "2 çay bardağı irmik"),
              FoodMaterial(name: "2 adet yumurta"),
              FoodMaterial(name: "Yarım çay kaşığı kabartma tozu"),
              FoodMaterial(name: "Yarım çay kaşığı karbonat"),
              FoodMaterial(name: "1,5 çay bardağı pudra şekeri"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "3 su bardağı un"),
              FoodMenuSubtitle(subTitleName: "Şerbeti İçin:"),
              FoodMaterial(name: "4 su bardağı toz şeker"),
              FoodMaterial(name: "4 su bardağı su"),
              FoodMaterial(name: "Çeyrek limon"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Şekerpare tatlısı için, ilk önce şerbeti hazırlayalım."
                      "\n\n2. Bunun için şekeri, suyu ve limon bir tencereye koyup, kaynamaya başladıktan sonra 6-7 dakika kaynatıp altını kapatın. "
                      "\n\n3. Şekerpare hamuru için, yumuşamış tereyağını ve bütün malzemeleri bir kaba koyup, unu azar azar ilave edip yumuşak bir hamur elde edin. "
                      "\n\n4. Ceviz büyüklüğünde hamur alıp, oval şekil verin. "
                      "\n\n5. Yağlanmış borcama dizin. "
                      "\n\n6. Üzerlerine yumurta sarısı sürüp, çatalla çizik atın. "
                      "\n\n7. Önceden ısıtılmış 180 derece fırında, üzerleri kızarana kadar pişirin. "
                      "\n\n8. Soğumuş olan şerbeti, sıcak şekerparelerin üzerine dökün. "
                      "\n\n9. Üstünü kapatıp, şerbetinin çekmesini sağlayın. "
                      "\n\n10. Şekerpare tatlımız servise hazır. "),
            ],
          ),
        ),
      ),
    );
  }
}
