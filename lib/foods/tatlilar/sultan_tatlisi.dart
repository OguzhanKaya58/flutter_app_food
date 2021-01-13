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

class SultanTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Sultan Tatlısı",
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
                imagePath: "images/sultan-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "8-10",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Hamuru için:"),
              FoodMaterial(name: "125 gr tereyağı veya margarin"),
              FoodMaterial(name: "Yarım çay bardağı sıvı yağ"),
              FoodMaterial(name: "1 çay bardağı pudra şekeri"),
              FoodMaterial(name: "1 çay bardağı irmik"),
              FoodMaterial(name: "1 yumurta"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "Yaklaşık 3 – 3.5 su bardağı kadar un"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "3 su bardağı toz şeker"),
              FoodMaterial(name: "3 su bardağı su"),
              FoodMaterial(name: "4-5 damla limon suyu"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Yarım çay bardağı süt"),
              FoodMaterial(name: "Yarım su bardağı mavi haşhaş"),
              FoodMaterial(name: "Fındık, badem, çikolata"),
              Fabrication(),
              Recipe(
                  recipeName:
                  "1. Önce şerbeti hazırlanır ki soğuk olarak kullanılacak. Tencereye su ve şeker alınır şeker eriyene kadar karıştırılır. Eridikten sonra 15 dk kaynatılır. Limon suyu eklenir 5 dk daha kaynatılıp ocaktan alınıp soğumaya bırakılır. "
                      "\n\n2. Hamuru için oda ısısında yumuşamış tereyağı veya margarin, sıvı yağ, yumurta, pudra şekeri, irmik, kabartma tozu ve vanilya karıştırılır. "
                      "\n\n3. Yavaş yavaş un eklenerek yumuşak bir hamur elde edilir. "
                      "\n\n4. Üzeri için süt ve haşhaş bir kaba alınır. "
                      "\n\n5. Hamurdan ceviz büyüklüğünde parçalar alınarak yuvarlanır. "
                      "\n\n6. Önce süte, sonra haşhaşa bulanır. "
                      "\n\n7. Yağlı kağıt serili fırın tepsisine dizilir. "
                      "\n\n8. Bir kısmının üzerine fındık koyulur. Bir kısmı boş bırakılır. Boş kalanların üzerine daha sonra badem ve çikolata koydum. İsterseniz tamamını fındıklı veya çikolata-bademli de yapabilirsiniz. "
                      "\n\n9. Önceden ısıtılmış 180 derecede 30-35 dk pişirilir. "
                      "\n\n10. Sıcak tatlıya soğuk şerbet dökülür. "
                      "\n\n11. Şerbetini çektikten sonra boş kalanlara badem ve çikolata koyulur. Servise hazırdır, afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
