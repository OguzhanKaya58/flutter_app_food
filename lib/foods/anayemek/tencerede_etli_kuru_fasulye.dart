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

class TencereEtliKuruFasulye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tencerede Etki Kuru Fasülye",
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
                imagePath: "images/kuru-fasülye.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "1 saat 30dk",
              ),
              Materials(),
              FoodMaterial(name: "2 su bardağı kuru fasulye"),
              FoodMaterial(name: "500 gram kuşbaşı biraz yağlı et"),
              FoodMaterial(name: "1 adet büyük boy soğan"),
              FoodMaterial(name: "Yarım çay bardağı sıvı yağ"),
              FoodMaterial(name: "Yarım yemek kaşığı biber salçası"),
              FoodMaterial(name: "Toz pulbiber"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Karabiber"),
              FoodMaterial(name: "Tüm aşama için sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName:
                  "1. Fasulyeler yıkanır ve derin bir tencereye alınır. "
                      "\n\n2. Üzerini bolca geçecek kadar sıcak su eklenir. Ve yüksek ateşte veya orta ateşte kaynamaya bırakılır. (Ben elektrikli ocakta haşladım.) "
                      "\n\n3. Ara ara kontrol edilip kaşıkla karıştırılmalıdır. Ve kaşıkla bir tanesini kırıp sertliği kontrol edilmelidir. Çok iyi haşlanmazsa fasulye istenen lezzete ulaşmaz. Sonraki aşama zaten çok kolay ve pratik. "
                      "\n\n4. Etleri pişireceğimiz tencereye alıp üzerini birkaç parmak geçecek kadar sıcak su ekliyoruz. Ve suyu kesilip etler tencereye yapışana kadar haşlamaya bırakıyoruz. "
                      "\n\n5. Etlerin bu şekilde kavrulması yemeğe inanılmaz tat veriyor. Kesinlikle et sert olmamalı, iyice pişmelidir gerekirse su ilavesi yapılıp aynı işlem tekrar uygulanmalıdır. "
                      "\n\n6. Küp küp doğranmış kuru soğanlar ilave edilir. Yağ eklenir. Ve soğanların rengi dönünceye kadar kavrulur. "
                      "\n\n7. Salça ve tuzu ilave edip karıştıralım. Ardından haşlanmış fasulyeleri ekleyip hafif karıştırıyoruz. "
                      "\n\n8. Üzerini çok az geçecek kadar sıcak su ve toz pul biber ve karabiber ekliyoruz. İçindeki malzemeler zaten piştiği için fazla su ilavesi yapmıyoruz. "
                      "\n\n9. Üzerindeki suyun rengi koyulaşana kadar 15-20 dakika kaynatıyoruz. "
                      "\n\n10. Fasulyeler suda iyice yayılmış olacak yani tane tane ve yüzüyor olacaklar. Fasulyeler hala dipte kalıyorsa biraz daha kaynatın. Sonra dinlendirin ve servis edin."),
            ],
          ),
        ),
      ),
    );
  }
}
