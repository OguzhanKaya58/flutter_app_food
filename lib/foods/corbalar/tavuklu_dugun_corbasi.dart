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

class TavukluDugunCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tavuklu Düğün Çorbası",
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
                imagePath: "images/tavuklu-dugun-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "5dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı yoğurt"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              FoodMaterial(name: "1 çay kaşığı mısır nişastası"),
              FoodMaterial(name: "1 yumurta sarısı"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "2 adet tavuk but"),
              FoodMaterial(name: "4 su bardağı su"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Tereyağ-sıvı yağ karışımı"),
              FoodMaterial(name: "Nane, kırmızı toz biber"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tavuk butlarını yıkayıp temizleyelim. Yumuşayana kadar haşlayalım. Ilındığında derileri hariç didikleyelim. "
                      "\n\n2. Tencereye yoğurt, un, yumurta sarısı, mısır nişastasını alıp hafif çırpalım. "
                      "\n\n3. Üzerine suyu ekleyip ocağa alalım. Karıştıra karıştıra kaynamasını sağlayalım. "
                      "\n\n4. Kaynamaya başladığında içine didiklenen tavukları ekleyelim. "
                      "\n\n5. Altını kısıp 6-7 dk. Kaynatalım. En son tuzu ekleyip ocaktan alalım. "
                      "\n\n6. Üzeri için tereyağ ve sıvı yağ karışımında naneyi çok az yakalım. "
                      "\n\n7. İçine kırmızı toz biber ekleyip ocağı söndürelim çorbanın üzerine dökelim. "
                      "\n\n8. Mis gibi çorbamız hazır. "),
            ],
          ),
        ),
      ),
    );
  }
}
