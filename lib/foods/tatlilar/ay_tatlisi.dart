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

class AyTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ay Tatlısı",
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
                imagePath: "images/ay-tatlisi.jpg",
              ),
              Preparation(
                howManyPerson: "12-14",
                preparation: "30dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Hamuru için:"),
              FoodMaterial(name: "2 adet yumurta"),
              FoodMaterial(name: "125 gram margarin veya tereyağı"),
              FoodMaterial(name: "1 su bardağı süt"),
              FoodMaterial(name: "Yarım su bardağı sıvı yağ"),
              FoodMaterial(name: "2 yemek kaşığı dolusu sirke"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "1 çimdik tuz"),
              FoodMaterial(name: "Ele yapışmayacak yumuşak bir\nhamur kıvamına gelene kadar un"),
              FoodMenuSubtitle(subTitleName: "Arası için:"),
              FoodMaterial(name: "Fındık veya ceviz (dövülmüş)"),
              FoodMenuSubtitle(subTitleName: "Açmak için:"),
              FoodMaterial(name: "Buğday nişastası"),
              FoodMenuSubtitle(subTitleName: "Üstüne dökmek için:"),
              FoodMaterial(name: "150 gram margarin veya tereyağı"),
              FoodMenuSubtitle(subTitleName: "Şerbeti için:"),
              FoodMaterial(name: "4 veya 4,5 su bardağı şeker"),
              FoodMaterial(name: "6 su bardağı su"),
              FoodMaterial(name: "10 damla kadar limon suyu"),

              Fabrication(),
              Recipe(
                  recipeName:
                  "1. Önce hamuru için; un hariç bütün malzemeleri koyuyoruz ve elimizle karıştırıyoruz. "
                      "\n\n2. Üzerine özlü bir hamur olana kadar un koyuyoruz ve yoğurmaya devam ediyoruz. Ele yapışmayacak kıvama gelince, bırakabilirsiniz. "
                      "\n\n3. Hamuru 20 bezeye ayırıyoruz. (Fotoğraf şaşırtıcı olmasın, ben küçük yapmışım, 2 tanesini birleştirerek açtık) "
                      "\n\n4. Her birini bol nişasta ile yemek tabağı büyüklüğünde açıyoruz ve aralarına yine nişasta serperek üst üste koyuyoruz. "
                      "\n\n5. En son yine bol bol nişasta serptiğimiz zeminde bütün hamurları alıyoruz ve açabildiğimiz kadar açıyoruz. Çok ince de olmasın. Yuvarlak yapmaya özen gösterin zaten kolay açılıyor. "
                      "\n\n6. Hamurun yarısının üzerine ceviz serpiyoruz ve diğer yarısını üzerine kapatarak, üstünden hafif bastırarak yapışmasını sağlıyoruz. "
                      "\n\n7. Uçtan başlayarak nişastaya batırdığımız çay bardağı ile bütün hamuru ay şeklinde kesiyoruz. Kalan hamurları ayriyeten toplayıp, ay şeklinde keserek de koyabilirsiniz. "
                      "\n\n8. Bütün hamur bitince, büyükçe bir tepsiye diziyoruz ve üzerlerine erittiğimiz margarini sürüyoruz. "
                      "\n\n9. Önceden ısıtılmış, 180 dereceli fırına koyuyoruz. "
                      "\n\n10. Şerbeti için ise; suyu ve şekeri tencereye alıyoruz ve hafif kıvam alana kadar kaynatıyoruz. "
                      "\n\n11. Olunca üzerine limon suyunu da döküyoruz ve dinlenmeye bırakıyoruz. "
                      "\n\n12. Tatlımız güzelce kızarınca çıkarıyoruz ve 10 dakika sonra ılık şerbeti ılık tatlıya döküyoruz. Şerbet çok görünmesin gözünüze, çekiyor hepsini. "
                      "\n\n13. Şerbetini çeken, kat kat nefis tatlılar servise hazır"),
            ],
          ),
        ),
      ),
    );
  }
}
