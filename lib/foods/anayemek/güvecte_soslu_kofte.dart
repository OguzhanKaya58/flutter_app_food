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

class GuvecteSosluKofte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Güveçte Soslu Köfte",
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
                imagePath: "images/güvecte-soslu-köfte.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Köfte malzemeleri:"),
              FoodMaterial(name: "Yarım kilogram köftelik kıyma"),
              FoodMaterial(name: "2 dilim bayat ekmek"),
              FoodMaterial(name: "1 adet rendelenmiş kuru soğan"),
              FoodMaterial(name: "Kuru nane"),
              FoodMaterial(name: "Kimyon, Karabiber, Pulbiber, Tuz"),
              FoodMaterial(name: "Kızartmak için sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "3 adet büyük domates"),
              FoodMaterial(name: "Yarım yemek kaşığı domates salçası"),
              FoodMaterial(name: "3 diş sarımsak"),
              FoodMaterial(name: "Kekik, Tuz, Tereyağı"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Rendelenmiş kaşar peyniri"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Köfte malzemelerini yoğurma kabına alalım. "
                      "\n\n2. Birbirini alıncaya kadar iyice yoğuralım. "
                      "\n\n3. Ceviz büyüklüğünde parçalar alıp yuvarlayalım. "
                      "\n\n4. Köfteyi buzdolabında yarım saat kadar dinlendirelim. "
                      "\n\n5. Kızgın yağda arkalı önlü kızartalım ve güveç kaplarına eşit şekilde paylaştıralım. "
                      "\n\n6. Domatesin kabuklarını soyup küçük küçük doğrayalım ve küçük bir tencereye alalım. "
                      "\n\n7. Tereyağını da ilave edelim. "
                      "\n\n8. Kızartma yağından 1-2 kaşık da sosun içine koyalım. "
                      "\n\n9. Domatesleri biraz pişirelim. "
                      "\n\n10. Salça, sarımsak, tuz ve kekiği de ilave edelim. "
                      "\n\n11. Domatesler yumuşayıncaya kadar pişirelim. "
                      "\n\n12. Bunları da köftelerin üzerine eşit şekilde ilave edelim. "
                      "\n\n13. 250 derecelik fırında 20 dakika kadar pişirelim. "
                      "\n\n14. Fırından çıkarıp üzerine rendelenmiş kaşar peynirini de serpelim. "
                      "\n\n15. Üzeri kızarıncaya kadar tekrar fırına verip pişirelim. "
                      "\n\n16. Sıcak olarak servis edelim. Afiyetler olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
