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

class AvciKebap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Avcı Kebabı",
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
                imagePath: "images/avci-kebabi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "20dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Köfte harcı için:"),
              FoodMaterial(name: "300 gr kıyma"),
              FoodMaterial(name: "2 yemek kaşığı galeta unu"),
              FoodMaterial(name: "1 orta boy soğan rendesi"),
              FoodMaterial(name: "1 tatlı kaşığı köfte baharatı"),
              FoodMaterial(name: "Tuz, karabiber"),
              FoodMenuSubtitle(subTitleName: "Sebzeler için:"),
              FoodMaterial(name: "2 adet orta boy patates"),
              FoodMaterial(name: "2 adet havuç"),
              FoodMaterial(name: "2 adet yeşil biber"),
              FoodMaterial(name: "2 adet kapya kırmızı biber"),
              FoodMaterial(name: "10 tane arpacık soğan"),
              FoodMenuSubtitle(subTitleName: "Kızartmak için:"),
              FoodMaterial(name: "1 çay bardağı sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Üzerine:"),
              FoodMaterial(name: "1 kase bezelye konservesi"),
              FoodMenuSubtitle(subTitleName: "Sosu İçin:"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "5 yemek kaşığı domates sosu"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "Yarım yemek kaşığı biber salçası"),
              FoodMaterial(name: "1 buçuk su bardağı sıcak su (300ml)"),
              FoodMaterial(name: "1 çay kaşığı pul biber"),
              FoodMaterial(name: "1 dolu çay kaşığı tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle köfte malzemelerinin hepsini bir kaba alalım, köftemizi güzelce yoğuralım. "
                      "\n\n2. Misket şeklinde köfteleri yuvarlayalım bir kenara alalım. "
                      "\n\n3. Daha sonra patatesleri küp küp doğrayalım. "
                      "\n\n4. Patatesleri ,havuçları ,biberleri doğradıktan sonra sıvı yağ koyduğumuz tavada tüm sebzeleri kızartalım. "
                      "\n\n5. Köfteleri de hafif kızartalım "
                      "\n\n6. Arpacık soğanı da soteleyelim. "
                      "\n\n7. En son yemeğin sosu için salçamızı ve diğer malzemeleri bir sos tenceresine alalım. "
                      "\n\n8. Sıcak suyuda ilave edip 2 dakika kaynattıktan sonra ocaktan alalım. "
                      "\n\n9. Fırın kabına kızarttığımız tüm malzemeleri dizelim. "
                      "\n\n10. Bir kase konserve bezelyeyi de ekleyelim. "
                      "\n\n11. En son sosu üzerine dökelim ve 180 derece alt-üst ayar fırında yaklaşık 20-25 dakika kadar pişirelim. "
                      "\n\n12. Pişen yemeği sıcak sıcak servis yapalım deneyecek olanlara Afiyet olsun."),
            ],
          ),
        ),
      ),
    );
  }
}
