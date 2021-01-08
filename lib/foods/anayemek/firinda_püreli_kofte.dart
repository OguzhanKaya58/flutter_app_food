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

class FirindaPureliKofte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fırında Püreli Köfte",
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
                imagePath: "images/pure_kofte.jpg",
              ),
              Preparation(
                howManyPerson: "8-10",
                preparation: "30dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Püre için:"),
              FoodMaterial(name: "4 adet orta patates"),
              FoodMaterial(name: "Yarım su bardağı kaşar rendesi"),
              FoodMaterial(name: "1 yemek kaşığı tereyağ"),
              FoodMaterial(name: "Yarım çay bardağı süt"),
              FoodMaterial(name: "Karabiber ,Tuz"),
              FoodMenuSubtitle(subTitleName: "Köfte için:"),
              FoodMaterial(name: "300 gr kıyma"),
              FoodMaterial(name: "1 yumurta"),
              FoodMaterial(name: "2 orta soğan"),
              FoodMaterial(name: "2 diş sarımsak"),
              FoodMaterial(name: "Tuz, karabiber ,pulbiber, kimyon"),
              FoodMaterial(name: "1 su bardağı galete unu"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "1 domates"),
              FoodMaterial(name: "1 tatlı kaşığı biber salçası"),
              FoodMaterial(name: "Yarım çay bardağı sıcak su"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(
                  name:
                      "Kaşar rendesi not ben baharatları \nhepsinden 1 er çay kaşığı kullandım \nsiz ne kadar isterseniz öyle kullanın"),
              Fabrication(),
              Recipe(
                  recipeName: "1. İlk önce pure için patatesleri haşlayalım. "
                      "\n\n2. Soğumadan soymaya başlayalım. Ellerimiz biraz yanacak ama mecbur soyduğumuz patatesleri ezelim. "
                      "\n\n3. İçine tereyağı sütü ,tuzu ,karabiberi kaşar rendesi ekleyip iyice karıştıralım. "
                      "\n\n4. Kaşıkla içinde patates sıcak olduğu için yağ ve peynir erecektir biraz soğuduktan sonra elimizle iyice hamur yoğurur gibi yoğuralım. "
                      "\n\n5. Daha sonra borcamın en alt kısmına elimizle yayalım. "
                      "\n\n6. Sonra köfte yapımı için kıyma ve diğer malzemeleri koyarak 5 dakika yoğuralım. "
                      "\n\n7. Misket büyüklüğünde köfteler yapıp dolapta 10 dakika dinlendirin. "
                      "\n\n8. Daha sonra  biraz sıvı yağ eklediğiniz tavada hafif kızartalım ve pürenin üzerine dizelim. "
                      "\n\n9. Sos için domates kabuklarını soyup rendeleyelim robotu ekleyelim. "
                      "\n\n10. Salçasını ve suyunu tuzunu robota koyup hepsini beraber çekelim. "
                      "\n\n11. Köftelerin üzerine sosu dökelim fırına verip 15 dakika pişirelim. "
                      "\n\n12. Sonra fırından alıp üzerine kaşar rendeleyip tekrar fırına verip kaşarlar eriyip kızarana kadar pişirelim çok lezzetli bir tarif mutlaka deneyin favoriniz olabilir "),
            ],
          ),
        ),
      ),
    );
  }
}
