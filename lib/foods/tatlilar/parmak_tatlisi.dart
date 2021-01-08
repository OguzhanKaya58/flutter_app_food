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

class ParmakTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Parmak Tatlısı",
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
                imagePath: "images/parmak-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "10-12",
                preparation: "30dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Hamuru için:"),
              FoodMaterial(name: "125 gram yumuşak margarin"),
              FoodMaterial(name: "1 adet yumurta"),
              FoodMaterial(name: "Yarım çay bardağı toz şeker"),
              FoodMaterial(name: "2 çorba kaşığı sıvı yağ"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "2 çorba kaşığı irmik"),
              FoodMaterial(name: "Aldığı kadar un (3-4 çay bardağı kadar)"),
              FoodMenuSubtitle(subTitleName: "İçi için:"),
              FoodMaterial(name: "5 adet ceviz"),
              FoodMaterial(name: "1 çay bardağı fındık"),
              FoodMaterial(name: "2 çorba kaşığı toz şeker"),
              FoodMaterial(name: "Biraz tarçın"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "2 su bardağı toz şeker"),
              FoodMaterial(name: "2.5 su bardağı su"),
              FoodMaterial(name: "2-3 damla limon suyu"),
              FoodMenuSubtitle(subTitleName: "En üstü  için:"),
              FoodMaterial(name: "1 su bardağı irmik"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk önce şerbeti hazırlayın.Kaynayan şerbete limon suyunu damlatın ve ocağı kısın 10 dakika kısık ateşte yoğunlaşsın. "
                      "\n\n2. Ocağı kapatın ve şerbeti soğumaya bırakın. "
                      "\n\n3. Hamur için, olan malzemeyi bir kaba alın ve iyice yoğurun. "
                      "\n\n4. Unu her zamanki gibi azar azar ekleyin. Ele yapışmayan bir hamur elde edeceksiniz. "
                      "\n\n5. 15 dakika dinlendirin. "
                      "\n\n6. Ceviz ve fındığı robottan iri bir şekilde çekin ve içine şeker ve tarçını ekleyin. "
                      "\n\n7. Hamurdan yumurta büyüklüğünde parçalar koparın, içine fındıklı cevizli harçtan koyup elinizle hamuru düzelterek köfte şekli verin. "
                      "\n\n8. Bir tabağa az aza irmik koyun yaptığınız hamuru tabaktaki irmiğe bulayın. "
                      "\n\n9. Yağlanmış tepsiye dizin.180 derecelik fırında kızarana kadar pişirin. "
                      "\n\n10. Tatlının ilk sıcaklığının geçmesi için 5 dakika kadar bekleyin. "
                      "\n\n11. İyice soğumuş olan şerbeti üstlerine dökün. "
                      "\n\n12. Tatlı iyice soğuyunca servis yapın. "),
            ],
          ),
        ),
      ),
    );
  }
}
