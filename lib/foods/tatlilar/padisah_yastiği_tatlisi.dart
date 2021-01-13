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

class PadisahYastigiTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Padişah Yastığı Tatlısı",
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
                imagePath: "images/Padişah-Yastığı-Tatlısı.webp",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "15dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "4 adet yumurta"),
              FoodMaterial(name: "1 çay bardağı toz şeker"),
              FoodMaterial(name: "1.5 su bardağı un"),
              FoodMaterial(name: "3 yemek kaşığı sıcak su"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMenuSubtitle(subTitleName: "Arası için:"),
              FoodMaterial(name: "1 su bardağı süt"),
              FoodMaterial(name: "1 paket krem şanti"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "3. 5 su bardağı su"),
              FoodMaterial(name: "2. 5 su bardağı toz şeker"),
              FoodMaterial(name: "Bir kaç damla limon suyu"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle şerbeti için su ile şekeri karıştırıp kaynamaya bırakalım, hafif kıvam alınca limonunu sıkıp beş dakika daha kaynattıktan sonra soğutalım. "
                      "\n\n2. Krem şantisini de çırpıp buzdolabına bırakalım. "
                      "\n\n3. Keki içinde yumurtaların sarıları ile beyazını ayrı ayrı çırpma kaplarına alalım. "
                      "\n\n4. Yumurtanın beyazına bir fiske tuz atıp köpük köpük olana dek çırpalım. "
                      "\n\n5. Yumurtanın sarısına toz şekerini ekleyip biraz karıştırdıktan sonra sıcak suyunu katalım, iyice çırpalım. "
                      "\n\n6. Köpürttüğümüz yumurta beyazını sarısının içine kaşıkla fazla söndürmeden karıştıralım. "
                      "\n\n7. Elemiş olduğumuz unu ve kabartma tozunu vanilyayı katalım. "
                      "\n\n8. Yağlı kağıt serili kalıba kekimizi döküp, 180 derecede ısıtılmış fırında pembeleşene kadar pişirelim. "
                      "\n\n9. Kızaran kekimizi soğutalım, ortadan ikiye ayıralım. "
                      "\n\n10. Şerbetin yarısını alt tabana dökelim, üzerine kremşantinin tamamını sürelim. "
                      "\n\n11. Kekin üst tabanını sekiz parçaya bölelim, krem şantinin üzerine yerleştirelim. "
                      "\n\n12. Kalan şerbeti kekin üzerine dökelim ve süsleyelim. "
                      "\n\n13. Bir kaç saat dinlendirip servis yapalım. çok nefis bi tatlı afiyetler olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
