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

class DalyanKofte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dalyan Köfte",
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
                imagePath: "images/Dalyan-Köfte.jpg",
              ),
              Preparation(
                howManyPerson: "10-12",
                preparation: "20dk",
                cooking: "1 saat",
              ),
              Materials(),
              FoodMaterial(name: "1 kg kıyma"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "1 diş sarımsak"),
              FoodMaterial(name: "1 su bardağı galeta unu"),
              FoodMaterial(name: "1 adet yumurta"),
              FoodMaterial(name: "1-1,5 tatlı kaşığı tuz"),
              FoodMaterial(name: "2 tatlı kaşığı pulbiber"),
              FoodMaterial(name: "1 çay kaşığı karabiber"),
              FoodMaterial(name: "1 çay kaşığı yenibahar"),
              FoodMaterial(name: "Yarım çay kaşığı kimyon"),
              FoodMaterial(
                  name:
                      "Tuz ve baharatları tatlı kaşığının \nbüyüklüğüne ve kendi damak tadınıza \ngöre ayarlayabilirsiniz"),
              FoodMenuSubtitle(subTitleName: "İç Harcı İçin:"),
              FoodMaterial(name: "1 su bardağı bezelye"),
              FoodMaterial(name: "2 adet havuç"),
              FoodMaterial(name: "1 adet patates"),
              FoodMaterial(name: "İsteyen hazır garnitür kullanabilir"),
              FoodMenuSubtitle(subTitleName: "Üzerinin Sosu İçin:"),
              FoodMaterial(name: "1-2 yemek kaşığı Zeytinyağı"),
              FoodMaterial(name: "2 yemek kaşığı salça"),
              FoodMaterial(name: "İsteyen salça miktarını azaltabilir"),
              FoodMaterial(name: "1 su bardağı su"),
              FoodMenuSubtitle(subTitleName: "Köftenin üzerine sürmek için:"),
              FoodMaterial(name: "Yumurta akı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle köfteyi hazırlamak için yoğurma kabına kıymayı alıyoruz üzerine galeta unu, yumurta, rondodan geçirdiğimiz soğan, sarımsak, tuz, karabiber, pul biber, kimyon, ve yenibaharı ekleyerek yarım çay bardağı kadar suyu azar azar ekleyerek yoğuruyoruz. Köfteyi çok güzel yoğurmak gerekiyor dağılmaması için. "
                      "\n\n2. Güzelce yoğurduğumuz köfteyi daha lezzetli olması için 3-4 saat buzdolabında dinlendirmek gerek. "
                      "\n\n3. Ben iç harcı kendim hazırladığım için havuç ve patatesi küçük küçük, küp küp doğrayarak bezelyeyi de ekleyip biraz yumuşayana kadar haşladım. İsterseniz iç harcı hazır garnitür olarak kullanabilirsiniz. "
                      "\n\n4. Fırın tepsisi büyüklüğünde iki parça yağlı kağıdın birini tezgaha açıyoruz üzerine dinlenen köfte harcımızı koyarak diğer yağlı kağıdı üzerine kapatıyoruz ve merdane yada oklava ile dikdörtgen olacak şekilde inceltiyoruz. Köftenin 1 parmak kalınlığında olması yeterli. "
                      "\n\n5. Köftenin kısa tarafına iç harcımızı koyuyoruz ve yağlı kağıt yardımıyla rulo şeklinde sıkıca sarıyoruz. "
                      "\n\n6. Üzerine fırça ile yumurta akı sürdüğümüz köfteyi tekrar yağlı kağıda sararak üzerini alüminyum folyoyla kapatıp 200 derecede ısıtılmış fırında 45-50 dakika pişiriyoruz. İsteyen yağlı kağıda sarmadan sadece üzerini kapatarak da pişirebilir, benim köftemin çok az bir kısmı kağıda hafif yapışmıştı çok sıkı sardığım için sanırım. "
                      "\n\n7. Köfte pişerken bizde üzerinin sosu için küçük bir tencereye 1-2 yemek kaşığı kadar zeytinyağı ya da sıvı yağ koyarak ocağa alıyoruz üzerine salça ekleyerek salçanın kokusu çıkana kadar 1-2 dakika kadar kavurup üzerine bir büyük su bardağı su ekleyip karıştırarak 4-5 dakika kaynatıp ocaktan alıyoruz. "
                      "\n\n8. 45-50 dakika kadar pişen köfteyi kontrol edip fırından alıyoruz, üzerini açarak salça sosunu üzerine döküp tekrar fırında üzeri hafif kızarana kadar 10 dakika kadar daha pişirip fırından alıyoruz. "
                      "\n\n9. Salça sos istemezseniz sade olarak da yapabilirsiniz köfteyi, o zaman sade olarak fırında üzerini açıp biraz kızarana kadar pişirip fırından alırsınız. Fırından çıkardığımız Dalyan köfteyi biraz dinlenip ilk sıcağı çıktıktan sonra dilimleyerek servis ediyoruz. Deneyeceklere şimdiden afiyet olsun "),
            ],
          ),
        ),
      ),
    );
  }
}
