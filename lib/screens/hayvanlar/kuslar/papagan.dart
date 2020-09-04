import 'package:flutter/material.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/vet_arama.dart';
import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Papagan extends StatefulWidget {
  @override
  _PapaganState createState() => _PapaganState();
}

class _PapaganState extends State<Papagan> {
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
            title: Text('Macaw Papağan Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/papagan.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            //Bilgiler buraya
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
                Dgs.ad = "Papağanınız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Papağanınız";
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
    "Ara (Macaw) papağanlarının büyük boyutu ve canlı renkleri, göz ardı edilmelerini zorlaştırır. Bu sosyal kuşlar, eğitildiklerinde oldukça dikkat çekici canlılara dönüşebilirler."
    "Büyük gagaları göz korkutucu olsa da, iyi sosyalleştirilmiş bir Ara papağanı arkadaş canlısı ve sevecen olabilir."
    "Macawlar konuşmayı öğrenebilir ve ayrıca evin içinde ve dışında duydukları sesleri taklit etmeye eğilimli olabilirler.",
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
                  "Doğal yaşam alanlarında, Ara papağanı yerli tohumlar, meyveler, çiçekler, yapraklar, palmiye fıstığı, incir, nektar ve bazı bölgelerde kil ile beslenir."
                  "Bazı papağan türlerinin diyet ihtiyaçları diğer papağanlardan farklıdır çünkü beslenmelerinde daha fazla yağa ihtiyaç duyarlar",
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
                  "Ara papağanları uzun kuyrukları ile bilinir. Dolayısıyla büyük, uzun bir kafese ihtiyaçları vardır. Bir Macaw papağanı kuyruk tüylerinin kafes tabanına çarpmasını engelleyecek kadar uzun bir kafese ihtiyaç duyar."
                  "Aksi bir kafes türü kuyruk tüylerinin bükülmesine veya kırılmasına neden olabilir. Genel olarak, bir Macaw papağanı diğer papağan türlerine göre çok daha büyük bir kafese ve oyun standına ihtiyaç duyar. Bu nedenle bu kuşlardan birini sahiplendiğinizde bu hususa dikkat etmeniz önemlidir.",
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
                  "Tüm papağan kuşlarında olduğu gibi Macaw papağanlarında da bazı nedenler sonucunda birçok hastalıklar meydana gelebiliyor."
                  "Bu hastalıklar arasında gaga hastalığı tüy ve bakteri hastalıkları, kursak hastalıkları, mide hastalıkları, bağırsak hastalıkları, gaga üstü eti uyuz hastalığı, göz kapağı hastalıkları gibi birçok sağlık sorunları meydana gelebiliyor."
                  "Birçok papağan türlerinde olduğu gibi Macaw papağanlarıda hastalıklarını gizler dolayısıyle veteriner kontrolüne sıkça gitmelidirler. ",
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
