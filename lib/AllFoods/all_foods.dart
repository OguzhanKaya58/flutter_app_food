import 'package:flutter/material.dart';
import 'package:flutter_app_food/foods/anayemek/avci_kebap.dart';
import 'package:flutter_app_food/foods/anayemek/centik_kebabi.dart';
import 'package:flutter_app_food/foods/anayemek/coban_boregi.dart';
import 'package:flutter_app_food/foods/anayemek/dalyan_kofte.dart';
import 'package:flutter_app_food/foods/anayemek/firin_posetinde_b%C3%BCt%C3%BCn_tavuk.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_etimekli_besamel_soslu_tavuk.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_etli_karnabahar_yemegi.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_p%C3%BCreli_kofte.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_sebzeli_kofte.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_sebzeli_tavuk_sote.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_tavuk_kanat.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_tavuk_pirzola.dart';
import 'package:flutter_app_food/foods/anayemek/firinda_tavuk_sis.dart';
import 'package:flutter_app_food/foods/anayemek/g%C3%BCvecte_soslu_kofte.dart';
import 'package:flutter_app_food/foods/anayemek/hasanpasa_koftesi.dart';
import 'package:flutter_app_food/foods/anayemek/isvec-koftesi.dart';
import 'package:flutter_app_food/foods/anayemek/katikli_dolma.dart';
import 'package:flutter_app_food/foods/anayemek/kogteli_patetes_dizmesi.dart';
import 'package:flutter_app_food/foods/anayemek/patates_musakka.dart';
import 'package:flutter_app_food/foods/anayemek/tavada_tavuk_baget.dart';
import 'package:flutter_app_food/foods/anayemek/tavada_tavuk_sis.dart';
import 'package:flutter_app_food/foods/anayemek/tavuk_kapama.dart';
import 'package:flutter_app_food/foods/anayemek/tavuk_pane.dart';
import 'package:flutter_app_food/foods/anayemek/tavuklu_cokertme_kebab%C4%B1.dart';
import 'package:flutter_app_food/foods/anayemek/tavuklu_patates_oturtma.dart';
import 'package:flutter_app_food/foods/anayemek/tencerede_etli_kuru_fasulye.dart';
import 'package:flutter_app_food/foods/anayemek/tencerede_kofteli_patates_yemegi.dart';
import 'package:flutter_app_food/foods/anayemek/tencerede_patlican_oturtma.dart';
import 'package:flutter_app_food/foods/anayemek/zade_kebab%C4%B1.dart';
import 'package:flutter_app_food/foods/arayemek/soganli_pilav.dart';
import 'package:flutter_app_food/foods/arayemek/soganli_tavuklu_pilav.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/menu.dart';

class AllFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ana Yemekler",
          style: TextStyle(color: whiteColor),
        ),
        backgroundColor: menuAppBarColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: whiteColor),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, whiteColor]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaTavukKanat())),
                child: Menu(
                    name: "Fırında Tavuk Kanat",
                    imgPath: "images/firinda-tavuk-kanat.jpg",
                    calorie: "427 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaPureliKofte())),
                child: Menu(
                    name: "Fırında Püreli Köfte",
                    imgPath: "images/pure_kofte.jpg",
                    calorie: "383 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirinPosetindeButunTavuk())),
                child: Menu(
                    name: "Fırın Poşetinde Bütün Tavuk",
                    imgPath: "images/firin-posetinde-butun-tavuk.jpg",
                    calorie: "155 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CentikKebabi())),
                child: Menu(
                    name: "Çentik Kebabı",
                    imgPath: "images/Çentik-Kebabı.jpg",
                    calorie: "143 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SoganliTavukluPilav())),
                child: Menu(
                    name: "Soğanlı Tavuklu Pilav",
                    imgPath: "images/soganli-tavuklu-pilav.jpg",
                    calorie: "153 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TenceredeKofteliPatatesYemegi())),
                child: Menu(
                    name: "Tencerede Köfteli Patates Yemeği",
                    imgPath: "images/misket-kofteli-patates-yemegi.jpg",
                    calorie: "398 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ZadeKebabi())),
                child: Menu(
                    name: "Zade Kebabı",
                    imgPath: "images/zade-kebap.jpg",
                    calorie: "282 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TavukluPatatesOturtma())),
                child: Menu(
                    name: "Tavuklu Patates Oturtma",
                    imgPath: "images/tavuklu-patates-oturtma.jpg",
                    calorie: "172 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TencereEtliKuruFasulye())),
                child: Menu(
                    name: "Tencerede Etli Kuru Fasulye",
                    imgPath: "images/kuru-fasülye.jpg",
                    calorie: "379 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KofteliPatatesDizmesi())),
                child: Menu(
                    name: "Köfteli Patates Dizmesi",
                    imgPath: "images/kofteli-patates-dizmesi.jpg",
                    calorie: "310 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AvciKebap())),
                child: Menu(
                    name: "Avcı Kebabı",
                    imgPath: "images/avci-kebabi.jpg",
                    calorie: "480 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TavadaTavukSis())),
                child: Menu(
                    name: "Tavada Tavuk Şiş",
                    imgPath: "images/tavada-tavuk-sis.jpg",
                    calorie: "208 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GuvecteSosluKofte())),
                child: Menu(
                    name: "Güveçte Soslu Köfte",
                    imgPath: "images/güvecte-soslu-köfte.jpg",
                    calorie: "320 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => IsvecKoftesi())),
                child: Menu(
                    name: "İsveç Köftesi",
                    imgPath: "images/isvec-koftesi.jpg",
                    calorie: "196 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FirindaTavukSis())),
                child: Menu(
                    name: "Fırında Tavuk Şiş",
                    imgPath: "images/firinda-tavuk-sis.jpg",
                    calorie: "126 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TavadaTavukBaget())),
                child: Menu(
                    name: "Tavada Tavuk Baget",
                    imgPath: "images/tavada-tavuk-baget.jpg",
                    calorie: "120 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PatatesMusakka())),
                child: Menu(
                    name: "Patates Musakka",
                    imgPath: "images/Patates-Musakka.jpg",
                    calorie: "471 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TavukKapama())),
                child: Menu(
                    name: "Tavuk Kapama",
                    imgPath: "images/tavuk-kapama.jpg",
                    calorie: "355 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaSebzeliKofte())),
                child: Menu(
                    name: "Fırında Sebzeli Köfte",
                    imgPath: "images/sebzeli-firinda-kofte.jpg",
                    calorie: "398 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TenceredePatlicanOturtma())),
                child: Menu(
                    name: "Tencerede Patlıcan Oturtma",
                    imgPath: "images/tencerede-patlican-oturtma.jpg",
                    calorie: "200 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaSebzeliTavukSote())),
                child: Menu(
                    name: "Fırında Sebzeli Tavuk Sote",
                    imgPath: "images/Fırında_sebzeli_tavuk.jpg",
                    calorie: "389 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaEtliKarnabaharYemegi())),
                child: Menu(
                    name: "Fırında Etli Karnabahar Yemeği",
                    imgPath: "images/Fırında-Etli-Karnabahar-Yemeği.jpg",
                    calorie: "213 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HasanpasaKoftesi())),
                child: Menu(
                    name: "Hasanpaşa Köftesi",
                    imgPath: "images/Hasanpaşa-Köftesi.jpg",
                    calorie: "228 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaEtimekliBasemelSosluTavuk())),
                child: Menu(
                    name: "Fırında Etimekli Beşamel Soslu Tavuk",
                    imgPath: "images/Fırında-Etimekli-Beşamel-Soslu-Tavuk.jpg",
                    calorie: "298 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SoganliPilav())),
                child: Menu(
                    name: "Soğanlı Pilav",
                    imgPath: "images/soganli-pilav.jpg",
                    calorie: "283 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => KatikliDolma())),
                child: Menu(
                    name: "Katıklı Dolma",
                    imgPath: "images/katikli-dolma.jpg",
                    calorie: "353 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TavukluCokertmeKebabi())),
                child: Menu(
                    name: "Tavuklu Çökertme Kebabı",
                    imgPath: "images/Tavuklu-Çökertme-Kebabı.jpg",
                    calorie: "450 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DalyanKofte())),
                child: Menu(
                    name: "Dalyan Köfte",
                    imgPath: "images/Dalyan-Köfte.jpg",
                    calorie: "149 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TavukPane())),
                child: Menu(
                    name: "Tavuk Pane",
                    imgPath: "images/Tavuk-Pane.jpg",
                    calorie: "265 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CobanBoregi())),
                child: Menu(
                    name: "Çoban Böreği",
                    imgPath: "images/Çoban-Böreği.jpg",
                    calorie: "475 Kalori"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirindaTavukPirzola())),
                child: Menu(
                    name: "Fırında Tavuk Pirzola",
                    imgPath: "images/Fırında-Tavuk-Pirzola.jpg",
                    calorie: "154 Kalori"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
