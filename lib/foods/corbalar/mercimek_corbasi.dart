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

class MercimekCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Mercimek Çorbası",
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
                imagePath: "images/mercimek-corbasi.webp",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı kırmızı mercimek"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              FoodMaterial(name: "1 adet havuç"),
              FoodMaterial(name: "Yarım yemek kaşığı salça "),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "1 çay kaşığı karabiber"),
              FoodMaterial(name: "yarım çay kaşığı kimyon (isteğe bağlı)"),
              FoodMaterial(name: "1 litre su"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "2 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 tatlı kaşığı kırmızı toz biber"),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur. "
                      "\n\n2. Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir. "
                      "\n\n3. Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir. "
                      "\n\n4. Üzerine 1 lt su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Mercimekler ve havuçlar yumuşayana kadar kısık ateşte pişirilir. "
                      "\n\n5. Çorba piştikten sonra el blenderı ile güzelce ezilir. "
                      "\n\n6. Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir. "
                      "\n\n7. Kıvamı koyu gelirse size bir miktar su ilave edilerek bir taşım kaynatılır. "
                      "\n\n8. Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır. "
                      "\n\n9. Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir. "),
            ],
          ),
        ),
      ),
    );
  }
}
