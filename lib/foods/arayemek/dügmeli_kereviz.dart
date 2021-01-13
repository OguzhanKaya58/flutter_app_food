import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/fabrication.dart';
import 'package:flutter_app_food/widgets/food_material.dart';
import 'package:flutter_app_food/widgets/image_path.dart';
import 'package:flutter_app_food/widgets/materials.dart';
import 'package:flutter_app_food/widgets/preparation.dart';
import 'package:flutter_app_food/widgets/recipe.dart';

class DogmeliKereviz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Düğmeli Kereviz",
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
                imagePath: "images/Düğmeli-Kereviz.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "2 adet orta boy kereviz"),
              FoodMaterial(name: "2 adet havuç"),
              FoodMaterial(name: "2 adet patates"),
              FoodMaterial(name: "1 su bardağı  bezelye"),
              FoodMaterial(name: "1 büyük kuru soğan"),
              FoodMaterial(name: "1 su bardağından az portakal suyu"),
              FoodMaterial(name: "5-6 yemek kaşık zeytin yağı"),
              FoodMaterial(name: "1 çay kaşığı şeker"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Yarım çay bardağı sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kerevizlerin kabuğunu soyup, ortasını bir oyacakla havucun sığacağı şekilde oyun. "
                      "\n\n2. Havucu soyacakla kerevizin ortasına sığacak şekilde kazıyın. "
                      "\n\n3. Havucu kerevizin içine yerleştirdikten sonra 1 cm kalınlığında halka halka dilimleyin ve hemen 1 limon sıkılmış suyun içine atın ki kararmasın. "
                      "\n\n4. Yayvan bir tencerenin içine zeytinyağının yarısını dökün. "
                      "\n\n5. Yarım ay şeklinde doğranmış soğanları, küp küp doğranmış havuç ve patatesleri ekleyin. "
                      "\n\n6. Bezelyeleri ilave edin. "
                      "\n\n7. Düğmeli kerevizleri limonlu sudan alıp sebzelerin üzerine dizin. "
                      "\n\n8. Kalan zeytin yağını, portakal suyunu tuz ve şekeri ilave edip, orta ocakta kısık ateşte 20 dk kadar pişirin. "
                      "\n\n9. Bu aşamada yaklaşık yarım çay bardağı sıcak su ilave edin. "
                      "\n\n10. Pişmesine yakın üzerine kereviz yapraklarından da ekleyin. "
                      "\n\n11. Servis tabağınıza alıp bol limonla servis yapın. "),
            ],
          ),
        ),
      ),
    );
  }
}
