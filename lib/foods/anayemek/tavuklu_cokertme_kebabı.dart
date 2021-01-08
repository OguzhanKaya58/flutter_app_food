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

class TavukluCokertmeKebabi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tavuklu Çökertme Kebabı",
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
                imagePath: "images/Tavuklu-Çökertme-Kebabı.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "20dk",
                cooking: "40dk",
              ),
              Materials(),
              FoodMaterial(name: "3 tane patates"),
              FoodMaterial(name: "3 tane tavuk budu"),
              FoodMaterial(name: "4 yemek kaşığı domates sosu"),
              FoodMaterial(name: "1 kase yoğurt"),
              FoodMaterial(name: "4 diş sarımsak"),
              FoodMaterial(name: "Yarım çay kaşığı kaya tuzu"),
              FoodMaterial(name: "Yarım çay kaşığı karabiber"),
              FoodMaterial(name: "1 çay kaşığı pul biber"),
              FoodMaterial(name: "1-2 dal biberiye"),
              FoodMaterial(name: "Sıvı yağ"),
              FoodMaterial(name: "Karabiber, Tuz"),
              FoodMenuSubtitle(subTitleName: "Domates sosu için:"),
              FoodMaterial(name: "1 çay kaşığı pul biber"),
              FoodMaterial(name: "1 çay kaşığı kırmızı toz biber"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tavaya yağı alıp, yüksek ateşte iyice kızmasını bekleyelim. "
                      "\n\n2. Patatesleri uzun uzun doğrayıp ısınan yağın içine atalım ve tuz ile kızartalım. Patatesleri yüksek ateşte kızartırsanız içerisine fazla yağ çekmez. "
                      "\n\n3. Kızaran patatesleri, fazla yağını çekmesi için peçete serili tabağa çıkaralım. "
                      "\n\n4. Orta ateşe koyduğumuz tavanın içerisine sıvı yağ ekleyelim ve ısınınca uzun doğranmış olan tavukları ilave edelim. "
                      "\n\n5. Kapağını kapattığımız tavayı arada karıştırarak tavukların kızarmasını sağlayalım. "
                      "\n\n6. Rengi değişen tavukların üzerine ince uzun doğranmış ve suyu süzülmüş olan soğanı ekleyelim. "
                      "\n\n7. Soğanlar pembeleşince, sarımsağın yarısını ilave edelim. Biberiye yapraklarını ekleyip tencerenin kapağını kapatalım. "
                      "\n\n8. Ocağı kısalım ve içerisine tuz dahil tüm baharatları ekleyelim. Tavuklar yumuşayınca yemeğimiz hazır demektir ve domates sosunu yapmaya başlayabiliriz. "
                      "\n\n9. Tavaya 1 yemek kaşığı zeytinyağı ekleyelim. Üzerine domates sosunu ilave edip kavuralım. "
                      "\n\n10. Kavrulan domatesin üzerine pul biberi, kırmızı toz biberi ve tuzu ilave edelim. "
                      "\n\n11. Hepsini karıştırdıktan sonra biber salçasını da ekleyelim. Sosunuz çok katı olursa, kıvama gelmesi için gereği kadar su ekleyebilirsiniz. Salça kokusu çıkınca sosumuz hazır. "
                      "\n\n12. Diğer yanda yoğurdun içerisine kalan sarımsağı ekleyelim ve tuz ile birlikte çırpalım. "
                      "\n\n13. Servis tabağına patatesleri dizip üzerine yoğurdu gezdirelim. Yoğurdumuzun çok sulu olmaması gerekiyor, yoksa patatesleri sulandırır. "
                      "\n\n14. Yoğurdun üzerine yapmış olduğumuz domates sosunu gezdirelim. "
                      "\n\n15. Servisi tamamlamak için son olarak tavukları üzerine koyalım. Hepinize Afiyet Olsun… "),
            ],
          ),
        ),
      ),
    );
  }
}
