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

class KadayifliEtimekTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kadayıflı Etimek Tatlısı",
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
                imagePath: "images/Kadayıflı-Etimek-Tatlısı.jpg",
              ),
              Preparation(
                howManyPerson: "12-14",
                preparation: "15dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Tabanı için:"),
              FoodMaterial(name: "1. 5 paket tuzsuz etimek"),
              FoodMaterial(name: "2. 5 su bardağı toz şeker"),
              FoodMaterial(name: "2. 5 su bardağı su"),
              FoodMenuSubtitle(subTitleName: "Muhallebisi için:"),
              FoodMaterial(name: "6 su bardağı süt"),
              FoodMaterial(name: "3 yemek kaşığı un"),
              FoodMaterial(name: "3 yemek kaşığı nişasta"),
              FoodMaterial(name: "1 su bardağı toz şeker"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı veya margarin"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "1 poşet toz kremşanti"),
              FoodMaterial(name: "1 su bardağı soğuk süt"),
              FoodMaterial(name: "250 gr çiğ kadayıf"),
              FoodMaterial(name: "1 yemek kaşığı toz şeker"),
              FoodMaterial(name: "1 tatlı kaşığı tereyağı"),
              FoodMaterial(name: "Arzuya göre kıyılmış ceviz veya fındık içi"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle taban kısmını hazırlamakla işe başlayın. Bunun için etimekleri dikdörtgen borcama dizin. (18 adet etimek kullandım) "
                      "\n\n2. Ayrı bir yerde şekeri tencereye koyup orta ateşte, karıştırarak eritin. "
                      "\n\n3. Eriyen şekerin üzerine 2,5 su bardağı suyu ekleyin(dikkat edin üzerinize sıçramasın) ve sertleşen şeker tamamen eriyene kadar kaynatın "
                      "\n\n4. Hazırladığınız şerbeti etimeklerde hiç kuru yer kalmayacak şekilde paylaştırın. Etimekler şerbeti çekip yumuşarken, muhallebiyi hazırlayın. "
                      "\n\n5. Bunun için, tencereye vanilya ve tereyağı hariç tüm malzemeyi koyup, kaynama noktasına gelene kadar karıştırın. Kaynadıktan sonra, birkaç dakika daha pişirip, ocaktan alın. "
                      "\n\n6. Vanilya ve tereyağını ekleyip, bir güzel çırpın. Hazırladığınız muhallebiyi etimeklerin üzerine eşit şekilde yayın. Oda ısısında soğumasını sağlayın. "
                      "\n\n7. Toz krem şantiyi  süt ile çırpıp, soğuyan muhallebinin üzerine  yayın. Ve tatlının iyice soğuması için buz dolabına kaldırın. "
                      "\n\n8. Kavrulmuş kadayıfları hazırlamak için, çiğ kadayıfı dondurucuda dondurun. "
                      "\n\n9. Çıkartıp, erimesine fırsat vermeden elinizle ufalayın. "
                      "\n\n10. Tencereye yağı koyup eritin. Ardından kadayıfı ve toz şekeri ilave edip, renk değiştirene kadar kavurun. "
                      "\n\n11. Arzuya göre kıyılmış ceviz veya fındık içini ilave edip , beş dakika kadar daha kavurun. "
                      "\n\n12. Kavrulup soğuyan kadayıfı, dilimlediğiniz tatlınızın üzerine serpiştirerek servis edin. Kadayıfın çıtır çıtır olması için , servis ederken üzerine serpiştirin. "),
            ],
          ),
        ),
      ),
    );
  }
}
