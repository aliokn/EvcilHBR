import 'package:flutter/material.dart';

import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Hamster extends StatefulWidget {
  @override
  _HamsterState createState() => _HamsterState();
}

class _HamsterState extends State<Hamster> {
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
            title: Text('Hamster Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/hamstercover.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [Dekor(), krtgnl, krtbsl, krtbkm, krthstlk],
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
                Dgs.ad = "Hamsterınız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Hamsterınız";
                Storage.writeData(Tgs.ism);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Onay()));
              },
              child:
                  buildButtonColumn(Colors.green, Icons.check, "Hayvanım seç")),
        ],
      ),
    );
  }
}

Widget genelbilgi = Container(
  child: Text(
    "Hamsterlar evde rahatlıkla beslenebilecek hayvanlardan biridir."
    "Özellikle evde çok vakit geçiriyorsanız ya da çocuklarınız hayvan beslemek istiyorlarsa, beslemek için ideal bir hayvan olacaktır.",
    softWrap: true,
    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
  ),
);

Widget krtgnl = Container(
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
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [genelbilgi],
          )
        ],
      ),
    ));
Widget krtbsl = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
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
                  "Hamsterlere özel olarak hazırlanmış ve pet shoplarda satılmakta olan yemler vardır. Bu yemler hamsterlerin beslenmesini büyük oranda karşılar ama ek olarak vermeniz gereken besinler vardır. Bunlardan bazıları: Fasulye,  nohut,  bakla, tuzsuz çekirdek, karpuz çekirdeği ve kabak çekirdeği (soymadan verebilirsiniz)."
                  "Ayrıca fındık, fıstık, ceviz içi ve leblebiyi çok severler. Ispanak, haşlanmış bezelye, salatalık, havuç, mısır, taze fasulye, brokoli, haşlanmış patates gibi sebzeleri; çilek, muz, erik, armut, ayva, elma, üzüm ve karpuz gibi meyveleri de gerekli vitamin takviyesi için tüketmesini sağlayabilirsiniz.",
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
                  "Ev ortamında bakıma en uygun evcil hayvan türlerinden biridir. Hamster türleri kendi içlerinde; Suriye Hamster, Çin Hamsterı, cüce (gonzales) Hamster, Roborovski Hamster olmak üzere çeşitli türlere ayrılırlar. Fakat hepsinin bakımı fazlasıyla benzerdir. Evde sizinle birlikte yaşacak olan Hamsterın, ona uygun bir yaşam alanına sahip olması gerekmektedir."
                  "Edindiğiniz Hamsterın boyutuna göre paslanmaz çelik veya plastik kafes ya da cam akvaryum kullanabilirsiniz."
                  "Önemli olan bir başka nokta kendilerini daha rahat hissedebilecekleri ve saklanabilecekleri altlık (talaş) kullanmanız ve altlıklarının her zaman temiz olmasını sağlamanızdır. Hamsterler sürekli kafeslerinde olmaktan sıkılır ve egzersiz yapma ve oyun oynama ihtiyacı duyarlar.",
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
                  "Hamsterlarda en sık görülen sağlık problemi dişlerin uzaması ve buna bağlı olarak oluşan ağrı ve yeme problemidir. Dişler aşırı uzadığında kesilmelidir. "
                  "Sık görülen bir diğer sorunda üşütme yani solunum yolu problemidir. Hamsterı sağlıklı ve zinde tutabilmek için gerekli ısı aralığı 18 – 27 derece arasıdır. Uzun süre düşük ısılara maruz kalması zatürreye neden olabilir."
                  "Hamsterlarda yaygın görülen ve ölümcül olabilen sağlık sorunlarından birisi de “ıslak kuyruk” hastalığıdır. İshal ile karakterize olan bu hastalığı, bakteri kaynaklı çok bulaşıcı bir ishal olarak tanımlamak daha doğru olacaktır. Hastalığın sebebi camphylobacter grubu bir bakteridir.",
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
