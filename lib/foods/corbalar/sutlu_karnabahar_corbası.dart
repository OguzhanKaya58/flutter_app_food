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

class SutluKarnabaharCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sütlü Karnabahar Çorbası",
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
                imagePath: "images/sutlu-karnabahar-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "30dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 Küçük Boy Karnabahar"),
              FoodMaterial(name: "1 Adet Orta Boy Havuç"),
              FoodMaterial(name: "1 Adet Soğan"),
              FoodMaterial(name: "2 Yemek Kaşığı Tereyağ"),
              FoodMaterial(name: "2 Yemek Kaşığı Un"),
              FoodMaterial(name: "2 Su Bardağı Süt"),
              FoodMaterial(name: "1. 5 litre Su"),
              FoodMaterial(name: "Tuz, Karabiber"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "1 Yemek Kaşığı Tereyağı"),
              FoodMaterial(name: "Bayat ekmek Parçaları"),
              FoodMaterial(name: "Maydanoz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Karnabaharlar küçük çiçeklere ayrılarak sirkeli suda bir süre bekleterek yıkanır. "
                      "\n\n2. Patates ve havuçlar küp küp doğranır. "
                      "\n\n3. Karnabahar, patates ve havuç derin bir tencereye alınarak üzerini geçecek kadar su eklenir ve sebzeler yumuşayıncaya kadar haşlanır. "
                      "\n\n4. Soğanlar küp küp doğranır. "
                      "\n\n5. Başka bir tencerede 2 yemek kaşığı tereyağ eritilerek soğanlar pembeleşinceye kadar kavrulur. "
                      "\n\n6. 2 yemek kaşığı un ilave edilerek unun kokusu çıkana kadar kavrulur. "
                      "\n\n7. Unun rengi hafif dönmeye başladığında 2 su bardağı süt eklenir. "
                      "\n\n8. Kıvama gelene kadar sürekli karıştırılarak pişirilir. "
                      "\n\n9. Sosun içerisine haşlanmış sebzeler eklenir. "
                      "\n\n10. Haşlama suyundan da yaklaşık 1. 5 su litre bu karışıma eklenir. "
                      "\n\n11. Tüm karışım blendırdan geçirilerek güzelce ezilir. "
                      "\n\n12. Çorbanın kıvamı koyu olursa haşlama suyundan ilave edilebilir. "
                      "\n\n13. Tuz ve karabiber eklenerek 1 taşım kaynatılır ve altı kapatılır. "
                      "\n\n14. Süsleme için servis ederken 1 yemek kaşığı tereyağ kızdırılarak küp küp doğranmış bayat ekmek parçaları kavrulur. "
                      "\n\n15. İnce kıyılmış maydanoz ve ekmekler ile çorba servis edilir. "),
            ],
          ),
        ),
      ),
    );
  }
}
