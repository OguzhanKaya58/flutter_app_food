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

class BardaktaTiramisu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bardakta Tiramisu",
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
                imagePath: "images/Bardakta-Tiramisu.jpg",
              ),
              Preparation(
                howManyPerson: "4",
                preparation: "15dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "8 adet savoyar (kedi dili) bisküvi"),
              FoodMenuSubtitle(subTitleName: "Bisküvileri ıslatmak için:"),
              FoodMaterial(name: "2 tepeleme yemek kaşığıgranül kahve"),
              FoodMaterial(name: "2 yemek kaşığı rom"),
              FoodMaterial(name: "3/4 su bardağı su"),
              FoodMenuSubtitle(subTitleName: "Kreması için:"),
              FoodMaterial(name: "500 ml.süt"),
              FoodMaterial(name: "1 adet yumurta sarısı"),
              FoodMaterial(name: "2 tepeleme yemek kaşığı un"),
              FoodMaterial(name: "2 yemek kaşığı toz şeker"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "200 gram labne peyniri"),
              FoodMenuSubtitle(subTitleName: "Servisi için"),
              FoodMaterial(name: "2 tatlı kaşığı kakao"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tatlının kreması için; sos tenceresine süt, yumurta sarısı ve unu alıp ocağın altını yakın. Çırpma teliyle hızlıca karıştırın. "
                      "\n\n2. Süt kaynadığında ocağın altını kısın ve krema karışımına toz şekeri ekleyin. İyice karıştırıp toz şeker eridiğinde krema karışımını ocaktan alın. "
                      "\n\n3. Karışım oda sıcaklığına gelene kadar ara ara karıştırarak bekleyin, sonrasında vanilya ve labne peynirini ekleyip iyice karıştırın. "
                      "\n\n4. Bisküvileri ıslatmak için; suyu kaynatın. Granül kahveyi katıp eritin. Oda sıcaklığına gelene kadar bekleyin, soğuyunca içine romu ekleyin. "
                      "\n\n5. Büyük boy servis bardaklarını mutfak tezgahına alın. Her birinin alt kısmına ortadan kırarak birer adet kedi dili bisküvi yerleştirin. Kahveli suyla ıslatın. "
                      "\n\n6. Üzerlerini hazırladığınız kremayla kapattıktan sonra yeniden bir adet kedi dili bisküvi yerleştirin. Kahveli suyla ıslatın. "
                      "\n\n7. Kalan krema karışımıyla üzerlerini kapattıktan sonra hazırladığınız tatlıları, mümkünse bir gece boyunca buzdolabında soğutun. "
                      "\n\n8. Servisi öncesinde üzerlerine kakao gezdirdiğiniz tatlıları daha fazla bekletmeden sevdiklerinizle paylaşın. "),
            ],
          ),
        ),
      ),
    );
  }
}
