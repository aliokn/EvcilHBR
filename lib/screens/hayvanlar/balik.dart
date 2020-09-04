import 'package:flutter/material.dart';

import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Balik extends StatefulWidget {
  @override
  _BalikState createState() => _BalikState();
}

class _BalikState extends State<Balik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff640AFF),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            automaticallyImplyLeading: false,
            floating: true,
            pinned: false,
            snap: false,
            title: Text('Balık Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/balik1.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Dekor(),
                  Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Card(
                        color: Color(0xff0496FF),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ExpansionTile(
                              title: Text(
                                "Genel Bilgi",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              children: [genelbilgi],
                            )
                          ],
                        ),
                      )),
                  krtbsl,
                  krtbkm,
                  krthstlk
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

Column buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}

class Dekor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      decoration: BoxDecoration(
          color: Color(0xffFFD485),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Arama()));
              },
              child: buildButtonColumn(
                  Colors.cyan, Icons.near_me, 'En yakın veteriner')),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Barinak()));
              },
              child: buildButtonColumn(
                  Colors.cyan, Icons.location_on, 'En yakın barınak')),
          InkWell(
              onTap: () {
                Dgs.ad = "Balığınız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Balığınız";
                Storage.writeData(Tgs.ism);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Onay()));
              },
              child:
                  buildButtonColumn(Colors.green, Icons.check, "Hayvanım seç"))
        ],
      ),
    );
  }
}

Widget genelbilgi = Container(
  child: Text(
    "Akvaryum balıkları birçok evcil hayvana göre birçok yönden avantajlıdır. Evin içerisinde dolaşarak tüy dökme, evi kirletme problemleri yoktur ve bulundukları ortama şıklık katarlar."
    "İnsanlar rahatlamak ve huzur bulmak için akvaryum içerisindeki balıkların hareketlerini izlerler.",
    style: TextStyle(color: Colors.white),
    softWrap: true,
  ),
);

Widget krtbsl = Container(
    /////
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF), /////
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Beslenme",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Yemler yaklaşık bir yemek kaşığı kadar verilmelidir. 3 balık için 1 yemek kaşığı yem yeterlidir. Mümkünse öğle vaktine doğru ve gece yatmadan önce 1 yemek kaşığı yem verin. Daha fazla verilen yem balıkların çok yemesine ve şişerek ölmesine sebep olacaktır."
                  "Yem ve su konusu sebebi ile birçok balık yaşama veda etmektedir.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  softWrap: true,
                ),
              )
            ],
          )
        ],
      ),
    ));
Widget krtbkm = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Bakımı",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Balıklar hassas canlılardır ve balık bakımı yaparken üzerine titremek gerekir. Çok çabuk canları acıyıp ölebilirler. Eğer balık büyük akvaryum içerisinde değil de fanus içerisindeyse basit bir sistem içerisine yerleştirilmiş demektir. Suyunu değiştirmek en önemli meseledir. Suyunu değiştirmek için balıkları başka bir kaba almak gerek."
                  "Kısa süre başka kap içerisinde duracağı için içine su koymamazlık yapılmamalı ve kabın içerisi tamamen su dolu olmalıdır."
                  "Dikkatsizlik yüzünden ya da balıkları elle tutup diğer kaba aktarmak balıklara zarar verir."
                  "Akvaryumun dar ve uzun değil de aşağıya doğru genişleyen seçenekleri tercih edilmelidir. Böylece balıklar geniş ve rahat bir şekilde yüzme imkanı bulacaktır. Su çok sıcak ya da çok soğu olmamalıdır."
                  "Oda sıcaklığında su koyularak uzun süre balıkların yaşamasına yardımcı olabilirsiniz.",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));

Widget krthstlk = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Hastalık",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Akvaryumda uygun koşulların oluşmaması balıklarda ve diğer akvaryum canlılarında sağlık problemlerinin ortaya çıkmasına neden olur."
                  "Bu hastalıklardan en sık görülenleri Beyaz benek,mantar,böbrekte enfeksiyon,deri kanseridir bu hastalıkların hepsi gözlemlerinizle anlaşılabilir.",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
