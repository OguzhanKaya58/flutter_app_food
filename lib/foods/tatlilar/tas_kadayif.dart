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

class TasKadayif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Taş Kadayıf",
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
                imagePath: "images/tas-kadayif.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "20dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Şerbet için:"),
              FoodMaterial(name: "2,5 su bardağı su"),
              FoodMaterial(name: "2 su bardağı şeker"),
              FoodMaterial(name: "Çeyrek limon suyu"),
              FoodMenuSubtitle(subTitleName: "Hamuru için:"),
              FoodMaterial(name: "1 su bardağı ılık süt"),
              FoodMaterial(name: "1 su bardağı su"),
              FoodMaterial(name: "1,5 su bardağı un"),
              FoodMaterial(name: "1 tatlı kaşığı kuru maya"),
              FoodMaterial(name: "1 tatlı kaşığı şeker"),
              FoodMaterial(name: "1 çay kaşığı tuz"),
              FoodMenuSubtitle(subTitleName: "İçi için:"),
              FoodMaterial(name: "İnce çekilmemiş ceviz"),
              FoodMenuSubtitle(subTitleName: "Kızartmak için:"),
              FoodMaterial(name: "Sıvı yağ"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Çok lezzetli bir tatlı kesinlikle deftere eklemelisiniz diyerek işe şerbeti yaparak başlıyoruz. Çünkü şerbet soğuk olacak. Şeker ve suyu aynı bardakla ölçerek tencereye katıyoruz. "
                      "\n\n2. Kaynamaya başladıktan sonra altını kısıyoruz. "
                      "\n\n3. On dakika kaynatıyoruz, on dakika sonunda çeyrek limonun suyunu sıkıp beş dakika daha kaynatıyoruz. "
                      "\n\n4. Altını kapatıp soğumaya bırakıyoruz. "
                      "\n\n5. Biraz ılıyan şerbeti dolaba koyuyoruz, soğuması açısından. Şerbet soğuk olacak. "
                      "\n\n6. Geçelim hamura. Süt biraz ısıtılır, ılık olması için daha sonra çukur bir kaba katılır. "
                      "\n\n7. Bir su bardağı suda eklenir. "
                      "\n\n8. Üzerine şeker, tuz, maya eklenir ve karıştırılır. "
                      "\n\n9. En son un eklenir. Mikser ile beş dakika çırpılır. Hiç topak kalmayacak şekilde olur. "
                      "\n\n10. Üzerine poşet geçirilir, mayalanması beklenir. "
                      "\n\n11. Üzeri göz göz olup kabarıncaya kadar beklenir. "
                      "\n\n12. Teflon tava ocağa katılır. "
                      "\n\n13. Altı yakılır, iyice ısınması beklenir. "
                      "\n\n14. Mayalanan hamurdan birer yemek kaşığı tavaya dökülür. "
                      "\n\n15. Üzeri düzeltilir, resimde benim yaptığım gibi. "
                      "\n\n16. Sadece alt kısmı pişirilir. üst kısmı pişirilmeyecek. Alt kısım kızarıp üst kısmın hamursu rengi gidinceye kadar hamur bitene kadar aynı işlem yapılır. "
                      "\n\n17. Bu ölçülerle 25 tane çıkıyor. "
                      "\n\n18. Hepsi tava da pişirildikten sonra içlerine (pişirilmeyen kısmına) ceviz katılır ve kapatılır. İyice bastırın ki açılmasınlar. Bütün kadayıflar tek tek kapatılır. "
                      "\n\n19. Tavaya sıvı yağ katılır iyice kızdırılır. Kadayıflar atılır nar gibi arkalı önlü kızartılır. "
                      "\n\n20. Kızaran kadayıflar hemen soğuk şerbete atılır. "
                      "\n\n21. Ben beşerli grup yaptım yani beşer beşer kızarttım ve beşli şerbete attım. "
                      "\n\n22. Şerbetin içerisinde beş dakika durması yeterli. "
                      "\n\n23. Kadayıflar bitene kadar aynı işlem yapılır. "
                      "\n\n24. Bu kadar, yapması çok zevkli tadı zaten muhteşem. Afiyet olsun."),
            ],
          ),
        ),
      ),
    );
  }
}
