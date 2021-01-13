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

class FindikpareTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fındıkpare Tatlısı",
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
                imagePath: "images/Fındıkpare-Tatlısı.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 çay bardağı sıvı yağ"),
              FoodMaterial(name: "1 yumurta"),
              FoodMaterial(name: "1 küçük çay bardağı yoğurt"),
              FoodMaterial(name: "1 küçük çay bardağı kıyılmış fındık"),
              FoodMaterial(name: "2 yemek kaşığı hindistan cevizi"),
              FoodMaterial(name: "1 su bardağı irmik"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "2 su bardağı un"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "3,5 su bardağı su"),
              FoodMaterial(name: "3 su bardağı toz şeker"),
              FoodMaterial(name: "1 parça limon"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Su ve toz şekeri iyice karıştırıp ocağın üzerine verelim. "
                      "\n\n2. İçine bir parça limon ilave edip 15 dakika kaynatıp altını kapatalım. "
                      "\n\n3. Yoğurma kabına sıvı yağ, yoğurt, yumurtayı alıp karıştıralım. "
                      "\n\n4. İçine hindistan cevizi, kabartma tozu ve irmiği katıp karıştıralım. "
                      "\n\n5. Unu azar azar ilave edip hafif ele yapışan yumuşak bir hamur yoğuralım. "
                      "\n\n6. En son içine kıyılmış fındığı da katıp yoğuralım. "
                      "\n\n7. Hamurdan ceviz kadar parça alıp şekil verelim. "
                      "\n\n8. Hafif yağlanmış fırın tepsisine dizelim. "
                      "\n\n9. Önceden ısıtılmış 180 derece fırında pişirelim. "
                      "\n\n10. Fırından çıkan tatlının ilk sıcaklığı çıkınca ılık şerbeti üzerine dökelim. "
                      "\n\n11. Tatlıları ara ara çevirelim. "
                      "\n\n12. Tatlı bir gece dinlenirse daha lezzetli olacak. "),
            ],
          ),
        ),
      ),
    );
  }
}
