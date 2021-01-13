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

class KofteliPatatesDizmesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Köfteli Patates Dizmesi",
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
                imagePath: "images/kofteli-patates-dizmesi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "40dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "5 adet orta boy patates"),
              FoodMaterial(name: "3 adet yeşil biber"),
              FoodMaterial(name: "1 adet kırmızı kapya biber"),
              FoodMaterial(name: "6/7 adet çeri domates"),
              FoodMaterial(name: "İsteğe bağlı; 1 adet patlıcan"),
              FoodMaterial(name: "İsteğe bağlı; 1 adet kabak"),
              FoodMenuSubtitle(subTitleName: "Köfte harcı için:"),
              FoodMaterial(name: "500 gr. Kıyma"),
              FoodMaterial(name: "Yarım demet maydanoz"),
              FoodMaterial(name: "1 orta boy kuru soğan"),
              FoodMaterial(name: "1 tatlı kaşığı kırmızı toz biber"),
              FoodMaterial(name: "Karabiber"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "1, 5 yemek kaşığı domates salçası"),
              FoodMaterial(name: "2/2, 5 su bardağı sıcak su"),
              FoodMaterial(name: "Sıvı yağ"),
              FoodMaterial(name: "2 diş sarımsak(isteğe bağlı)"),
              FoodMaterial(name: "Karabiber"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk olarak köftemizi oluşturmak için; ince kıydığımız ve gene ince doğradığımız soğanlarımızı kıymaya katıyoruz. Baharatlarını ilave edip; 7/8 dakika yoğuruyoruz. "
                      "\n\n2. Ayrı bir zeminde patateslerimizi bir parmak kalınlığında yuvarlaklar halinde kesiyoruz. Soğuk suda bekletiyoruz. "
                      "\n\n3. Biberlerimizi de konuya dahil edip; köftelerimizi çok büyük olmayacak şekilde yuvarlak forma kavuşturuyoruz. "
                      "\n\n4. İsterseniz direkt fırına atarak, isterseniz benim gibi öncesinde hafif kızartarak yapabilirsiniz. "
                      "\n\n5. Tavamıza biraz yağ ekleyip, patates, köfte ve biberleri kısa süreli kızartıyoruz. Yuvarlak bir borcama sırasıyla; köfte patates isteğiniz doğrultusunda sebzeleri de dizip elinizdeki malzeme bitene kadar sıralamayla devam ediyoruz. Aralara 4’e böldüğümüz çerileri serpip, üstüne biberleri ilave ediyoruz. "
                      "\n\n6. Küçük bir tencerede sosumuzu hazırlayıp; köfte ve patateslerimizin üzerinden güzelce döküyoruz. "
                      "\n\n7. Önceden ısıtılmış 190/200 derecelik fırında üstünü folyo ile kapatıp 20 dakika bu şekilde pişiriyoruz. Daha sonra folyoyu kaldırıp 15 dakika kadar pişimini kontrol ederek süreyi tamamlıyoruz. "),
            ],
          ),
        ),
      ),
    );
  }
}
