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

class NevzineTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Nevzine Tatlısı",
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
                imagePath: "images/nevzine-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "12-14",
                preparation: "20dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "125 gram tereyağı"),
              FoodMaterial(name: "1 çay bardağı sıvı yağ"),
              FoodMaterial(name: "1 çay bardağı tahin"),
              FoodMaterial(name: "1 çay bardağı süt"),
              FoodMaterial(name: "1 yemek kaşığı sirke"),
              FoodMaterial(name: "1 çay bardağı ceviz içi"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "3,5 su bardağı un"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "2,5 su bardağı toz şeker"),
              FoodMaterial(name: "2 su bardağı su"),
              FoodMaterial(name: "Yarım su bardağı pekmez"),
              FoodMaterial(name: "2-3 damla limon suyu"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle şerbeti hazırlayıp, soğumaya bırakıyoruz. Şeker ve suyu bir tencerede kaynatıyoruz. "
                      "\n\n2. Kaynamaya başlayınca limon damlatıp, beş dakika kadar kaynattıktan sonra altını kapatıyoruz. "
                      "\n\n3. Son olarak pekmezi de şerbete ekleyip karıştırıp, soğumaya bırakıyoruz. "
                      "\n\n4. Tatlının hamuru için un hariç verilen bütün malzemeleri güzelce karıştırıyoruz. "
                      "\n\n5. Unu yine kontrollü bir şekilde ekleyerek ele yapışmayan ama yumuşak bir hamur yoğuruyoruz. "
                      "\n\n6. Hamurda parçalar alarak ister elinizle yuvarlayarak isterseniz de bir kalıpta şekil veriyoruz. "
                      "\n\n7. Fırın tepsisine ya da borcama tatlıları diziyoruz. "
                      "\n\n8. Önceden ısıtılmış 180 derece fırında pişiriyoruz. "
                      "\n\n9. Fırından çıkan tatlıların ilk sıcağı çıktıktan sonra soğumuş olan şerbeti döküyoruz. "
                      "\n\n10. Tatlının üzerini başka bir tepsiyle kapatarak şerbetini çekmesini sağlıyoruz. "
                      "\n\n11. Şerbetini çeken tatlıları buzdolabında en az iki saat dinlendirdikten sonra servis edebilirsiniz.Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
