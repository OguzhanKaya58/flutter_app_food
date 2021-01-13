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

class BulutTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Bulut Tatlısı",
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
                imagePath: "images/bulut-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "10-12",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "200 ml sıvı krema"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "1 su bardağı dolusu un"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "2 su bardağı toz şeker"),
              FoodMaterial(name: "2,5 su bardağı su"),
              FoodMaterial(name: "Yarım dilim limon"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle şerbeti yapılıp soğumaya bırakılır. Tencereye su şeker ve limon dilimi alınıp 20-25 dk kaynatılır. Ocaktan alınıp soğumaya bırakılır. "
                      "\n\n2. Yoğurma kabına sıvı krema ve kabartma tozu alınır iyice karıştırılır. Üzerine un eklenir ve spatula ile karıştırılır. Ele yapışan bir kıvamda olacak daha fazla un ilavesi yapmayın. "
                      "\n\n3. Kolay şekillendirmek için küçük bir kaba 1 yemek kaşığı sıvı yağ alıp elinizi yağa batırarak kolayca yuvarlayabilirsiniz. Yağ yerine su da kullanabilirsiniz. "
                      "\n\n4. Hamurdan cevizden küçük parçalar alınarak yuvarlanır. Yağlanmış veya yağlı kağıt serilmiş tepsiye dizilir. "
                      "\n\n5. Önceden ısıtılmış 180 derecede 20-25 dk pişirilir. Profiterol hamuru gibi çok hafif bir hal alıyor, birde iki katı kabarıyorlar😍 pişen tatlılar ılımaya bırakılır. "
                      "\n\n6. Ilık tatlılara soğuk şerbet dökülür. 10-15 dk dinlendikten sonra tüm tatlılar ters çevrilir üzerininde şerbetlenmesi sağlanır. 10 dk da bu şekilde dinlendirilir. "
                      "\n\n7. Şerbetini iyice çeken tatlılar servise hazır, üzerine isterseniz hindistan cevizi veya toz fıstık serperek servis edebilirsiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
