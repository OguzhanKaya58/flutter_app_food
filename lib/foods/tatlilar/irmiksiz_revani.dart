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

class IrmiksizRevani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "İrmiksiz Revani",
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
                imagePath: "images/İrmiksiz-Revani.jpg",
              ),
              Preparation(
                howManyPerson: "12-14",
                preparation: "15dk",
                cooking: "25",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Hamur Malzemesi:"),
              FoodMaterial(name: "3 adet yumurta(oda ısısında ılık olacak)"),
              FoodMaterial(name: "Yarım su bardağı toz şeker"),
              FoodMaterial(name: "1 su bardağı cıvıkça yoğurt"),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "2 su bardağı un"),
              FoodMaterial(name: "1 adet kabartma tozu"),
              FoodMaterial(name: "Yarım limon kabuğu rendesi"),
              FoodMenuSubtitle(subTitleName: "Fırından çıkınca üzeri için:"),
              FoodMaterial(name: "1 su bardağı ılık su"),
              FoodMenuSubtitle(subTitleName: "Şerbeti İçin:"),
              FoodMaterial(name: "3 su bardağı toz şeker"),
              FoodMaterial(name: "3 su bardağı su"),
              FoodMaterial(name: "1 yemek kaşığı limon suyu"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk önce şerbetini hazırlayalım. 3 su bardağı şeker ile 3 su bardağı suyu ocakta kaynatalım kaynadığı anda  1 yemek kaşığı limon suyunu ekleyelim ve  bir 5 dakika daha kaynatıp ocağın altını kapatalım.Şerbet sönmüş ocağın üstünde sırasını beklesin "
                      "\n\n2. Fırınımızı 180-190 derece de ısıtmaya başlayalım. "
                      "\n\n3. Yumurta ile şekeri derin bir kapta mixer ile bir 5 dakika kar gibi krema gibi  olana kadar çırpalım. "
                      "\n\n4. Devamında oda ısısındaki cıvıkça yoğurdumuzu, 3 yemek kaşığı sıvı yağımızı yumurtalı karışıma ekleyelim. "
                      "\n\n5. Hepsinin üstüne de unumuzu ve kabartma tozumuzu bir elek ile eleyerek ekleyelim. . Güzelce yıkanmış kurulanmış ve rendelenmiş yarım limon kabuğu rendesini de hamura ekleyelim. "
                      "\n\n6. Şimdi bu karışımı karıştıralım sakın mixer ile çok hızlıca ve uzunca çırpmayın. . . Nazik nazik çırpma teli yada kaşık ile karışımı yavaş yavaş söndürmeden çok da çırpmadan karıştıralım. Burada ki püf nokta hamuru çok çıpmamak, yumurtaları söndürmemek. "
                      "\n\n7. Derin kare borcamı  alalım ve sıvı yağ ile güzelce yağlayalım. Hamurumuzu borcama dökelim,eşit şekilde yayalım  ve altına bir bez koyarak tezgaha yavaş yavaş vuralım ki hamurun içinde ki  hava kabarcıkları çıksın kekimiz daha güzel olsun. "
                      "\n\n8. Şimdi borcamda ki keki güzelce ısınmış fırına verin ve üzeri güzelce kızarana kadar fırın kapağını açmadan camdan kontrol ederek keki pişirin. "
                      "\n\n9. Kek güzelce kızardı pişti. Şimdi fırından çıkar çıkmaz keki keskin bir bıçakla kare kare kesin ve hemen ardından 1 su bardağı ılık suyu kekin üzerine  her yerine  dökün. "
                      "\n\n10. Ve hemen  arkasından da ılık şerbeti kekin üzerine  dökün. "
                      "\n\n11. 15-20 dakika sonra kekiniz tüm şerbeti güzelce çekti ve revani oldu. "
                      "\n\n12. Şimdi ister ılık ılık istersenizde bir süre bekledikten sonra servis yapabilirsiniz. "
                      "\n\n13. Kalan tatlınızın üzerini bir bone ile kapatarak bir kaç gün buzdolabında rahatlıkla saklayabilirsiniz…Bu tatlı ılık olduğu kadar  soğuk olarak da güzel olan bir tatlı. "
                      "\n\n14. Sunum aşamasında arzu ederseniz tabakta ki tatlınızın üzerine Hindistan cevizi yada çekilmiş fındık ekleyerek servis yapabilirsiniz."),
            ],
          ),
        ),
      ),
    );
  }
}
