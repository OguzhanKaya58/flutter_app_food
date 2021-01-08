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

class FirindaSebzeliKofte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fırında Sebzeli Köfte",
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
                imagePath: "images/sebzeli-firinda-kofte.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "30dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Köfte İçin:"),
              FoodMaterial(name: "250 gram kıyma"),
              FoodMaterial(name: "1 tane rendelenmiş kuru soğan"),
              FoodMaterial(name: "1 diş rendelenmiş sarımsak"),
              FoodMaterial(name: "1 tane yumurta"),
              FoodMaterial(name: "Karabiber, kırmızı biber, kimyoni tuz"),
              FoodMaterial(name: "Çay kaşığının ucuyla çok az karbonat"),
              FoodMaterial(name: "2 yemek kaşığı galeta unu"),
              FoodMenuSubtitle(subTitleName: "Sebzeli karışım İçin:"),
              FoodMaterial(name: "2 tane büyük boy patates"),
              FoodMaterial(name: "1 tane büyük boy havuç"),
              FoodMaterial(name: "1 tane orta boy kuru soğan"),
              FoodMaterial(name: "1 2 diş sarımsak"),
              FoodMaterial(name: "1 buçuk su bardağı bezelye"),
              FoodMaterial(name: "3 yemek kaşığı domates sos"),
              FoodMaterial(name: "3 tane sivri biber"),
              FoodMaterial(name: "1 tane kırmızı kapya biber"),
              FoodMenuSubtitle(subTitleName: "Sosu İçin:"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 çay bardağından bir parmak eksik sıvı yağ"),
              FoodMaterial(name: "2 su bardağı sıcak su"),
              FoodMaterial(name: "Tuz, karabiber, kekik"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle karıştırma kabına köfte malzemelerini alarak köftemizi yoğuruyoruz ( baharatları kendi damak tadınıza göre ayarlayın miktar vermiyorum) "
                      "\n\n2. Yoğurduğumuz köfteden misketten bir tık büyük parçalar koparıp yuvarlıyarak hafifçe un serpilmiş bir tepsiye alıyoruz. "
                      "\n\n3. Fırın tepsimize küp küp doğranmış patates, küp küp doğranmış havuç, küçük doğranmış biberler, küçük doğranmış soğan sarımsak domates sos, bezelye difrizden çiğ kullandım bütün sebzeleri karıştırıp üzerine hazırladığımız köfteleri yerleştiriyoruz. "
                      "\n\n4. Sos için olan malzemeleri karıştırıp yemeğin üzerine gezdirerek tepsiyi hafifçe sallayıp köftelerin yerleşmesini sağlıyoruz üzerini yağlı kağıtla kapatıp ki kapatmazsanız köfteler çok fazla kızarır ve hoş bir görüntü oluşturmaz. "
                      "\n\n5. Önceden ısıtılmış 200 derece fırında ara ara karıştırarak sebzeler yumuşayana kadar pişiriyoruz ( ilk aşamada köfteler toparlanana kadar kaşık değdirmiyoruz )  "
                      "\n\n6. Son beş dakika üzerindeki kağıdı alıp yemeğin üzerinin kızarmasını sağlıyoruz "),
            ],
          ),
        ),
      ),
    );
  }
}
