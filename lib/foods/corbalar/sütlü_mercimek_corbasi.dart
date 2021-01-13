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

class SutluMercimekCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Sütlü Mercimek Çorbası",
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
                imagePath: "images/mercimek-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı kırmızı mercimek"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "4 su bardağı su"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Üzeri İçin:"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 yemek kaşığı zeytin yağı"),
              FoodMaterial(name: "1 çay kaşığı kırmızı toz biber"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tereyağı ve sıvı yağ, tencereye alınarak ısıtılır. "
                      "\n\n2. Küçük doğranmış kuru soğan kavrulur. "
                      "\n\n3. Un eklenerek, rengi dönene kadar kavrulur. "
                      "\n\n4. Yıkanıp suyu süzülen mercimekler eklenir. "
                      "\n\n5. Karıştırılır ve üzerine su ilave edilir. "
                      "\n\n6. Tencerenin kapağı kapatılarak, mercimekler pişene kadar pişirilir. "
                      "\n\n7. Gerekirse su ilavesi yapılarak, mercimeklerin pişmesi sağlanır. İsteğe bağlı tavuk suyu da ekleyebilirsiniz. "
                      "\n\n8. Mercimekler piştikten sonra, çorba blenderdan geçirilir. "
                      "\n\n9. Süt ve tuz eklenerek, 4-5 dk kısık ateşte kaynatıldıktan sonra ocaktan alınır. "
                      "\n\n10. Çorbanın kıvamı koyu gelirse, sıcak su ilave edebilirsiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
