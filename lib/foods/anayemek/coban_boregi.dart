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

class CobanBoregi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Çoban Böreği",
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
                imagePath: "images/Çoban-Böreği.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "1 saat",
                cooking: "25dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Kıyma harcı:"),
              FoodMaterial(name: "500 gr dana kıyma"),
              FoodMaterial(name: "1 büyük soğan"),
              FoodMaterial(name: "3 adet havuç"),
              FoodMaterial(name: "1 kase bezelye (yaklaşık 1,5 su bardağı)"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              FoodMaterial(name: "1 çay bardağı su"),
              FoodMaterial(name: "Tuz, karabiber, kırmızı toz biber"),
              FoodMaterial(name: "1 küçük sarımsak dişi"),
              FoodMaterial(name: "Yarım çay bardağı sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Üst harcı – Patates harcı:"),
              FoodMaterial(name: "6 tane büyük haşlanmış patates"),
              FoodMaterial(name: "200 gr rendelenmiş kasar peyniri"),
              FoodMaterial(name: "Yarım çay bardağı süt"),
              FoodMaterial(name: "Tuz, Karabiber"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk önce patatesler soyulur, ortadan bölünür ve bir tencere su içinde haşlanır. "
                      "\n\n2. İçine 2 çay kaşığı tuz atılır, patatesler de ortadan kesilir. Çabukça haşlansın diye. "
                      "\n\n3. Havuçlar soyulur ve küçük küp küp kesilir, bezelye ile bir ayrı tencerede suda 10 dakika haşlanır. "
                      "\n\n4. O sırada bir tavaya sıvı yağ eklenir. Küçük doğranmış soğanlar da eklenir ve az 2 dakika kavrulur. "
                      "\n\n5. Sonra kıyma eklenir ve karıştırılır. "
                      "\n\n6. Kıyma az piştikten sonra un ve su eklenir ve karıştırılır. "
                      "\n\n7. Kıyma piştikten sonra içine doğranmış sarımsak, salça ve baharatlar eklenir, karıştırılır. "
                      "\n\n8. Sonra haşlanmış olan havuç ve bezelyeler de eklenir ve karıştırılır. "
                      "\n\n9. Hep karıştırılarak katı bir kıvama gelene kadar 10 dakika pişirilir. "
                      "\n\n10. O sırada patateslere de bakılır pişti mi diye? Piştilerse süzgece eklenir. "
                      "\n\n11. Sonra derin bir kaba alınır ve çatal ile ezilir. Sonra tuz, karabiber, süt ve rendelenmiş kaşar peyniri eklenir ve karıştırılır. "
                      "\n\n12. Derin bir kap veya borcam alınır, fakat gerçekten derin olması lazım. Pişerken fırına yağ akıyor o yüzden bunu önlemek için derin olması çok iyi oluyor. "
                      "\n\n13. İlk önce kıymalı harcı borcama ekliyoruz ve kaşık ile bastırıyoruz. "
                      "\n\n14. Sonra bir kaşık ile patates püresinden alıyoruz ve her bir tarafına kaşık kaşık koyuyoruz ve çatal ile dikkatlice dağıtıyoruz. "
                      "\n\n15. En sonda çatal ile çizikler atıp fırına 25 dakikalığına 180-200 dereceye verip pişiriyoruz. Lazanya gibi muhteşem bir lezzet ortaya çıkıyor. "),
            ],
          ),
        ),
      ),
    );
  }
}
