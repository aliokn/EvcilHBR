import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Kaplumbaga extends StatefulWidget {
  @override
  _KaplumbagaState createState() => _KaplumbagaState();
}

class _KaplumbagaState extends State<Kaplumbaga> {
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
            title: Text('Kaplumbağa Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/kaplumbaga1.jpg",
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
          buildButtonColumn(Colors.cyan, Icons.near_me, 'En yakın veteriner'),
          buildButtonColumn(
              Colors.cyan, FontAwesomeIcons.tree, 'En yakın park'),
          InkWell(
              onTap: () {
                Dgs.ad = "Kaplumbağanız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Kaplumbağanız";
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
    "Su kaplumbağası bakımı, özellikle küçük çocuklar arasında oldukça yaygındır."
    "Bu sürüngenlerin bakımı diğer evcil hayvanlara oranla daha kolay olsa da, kaplumbağaların sağlıklarını koruyabilmesi için yine de bazı temel kurallara dikkat etmeniz gerekiyor. ",
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
            title: Text("Genel Bilgi",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
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
            title: Text("Beslenme",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            children: [
              Container(
                child: Text(
                  "Genelde su kaplumbağaları büyürken çok fazla proteine ihtiyaç duyar, bu durum 3 yaşına gelene kadar sürer. Bu sürüngen türü, bu yaş aralığındayken çok hızlı büyür."
                  "Bu yüzden solucan, cırcır böceği, küçük balıklar ve kabuklu canlılar gibi bol miktarda hayvansal protein kaynağı içeren besinleri yemeleri gerekir."
                  "Üçüncü yaşını doldurduktan sonra, kaplumbağanıza verdiğiniz besin miktarını aşama aşama düşürmeniz gerekiyor. Bu dönemden sonra çoğunlukla bitkilerle beslenmesi yeterli olacaktır. Deniz yosunu, yeşil yapraklı yiyecekler ve marul  evcil hayvanınızın diyetine dahil edebileceğiniz besinler arasında gösterilir."
                  "",
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
            title: Text("Bakımı",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            children: [
              Container(
                child: Text(
                  "Su kaplumbağaları, zamanlarının çoğunu içinde yaşadıkları kapların içinde geçirirler. Bu yüzden yapmanız gereken ilk şey, dikkatli bir biçimde evcil hayvanınız için en iyi yaşam alanını seçmektir. Kaplumbağanız, gelişimi için en iyi koşullara sahip olmalıdır."
                  "Kaplumbağanızın yaşamını sürdüreceği alan, özgürce yüzebilmesi için yeterli büyüklükte olmalıdır ve kaplumbağanız bu alanda kendini rahat hissetmelidir."
                  "u kaplumbağaları soğukkanlı canlılardır, yani vücut sıcaklıklarını yaşadıkları ortama göre ayarlayabilirler. Bu duruma değişkensıcaklılık da (poikloterm) denir ve bu şekilde su kaplumbağaları kendi vücut sıcaklıklarını düzenleyerek dış faktörlerden mümkün olduğunca az etkilenirler.",
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
            title: Text("Hastalık",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            children: [
              Container(
                child: Text(
                  "Su kaplumbağalarında başlıca görülen hastalıklar soğuk algınlığı ve akciğer enfeksiyonu,kabuk deformasyonu,göz iltihaplanması ve ishaldir. "
                  "Bu hastalıkların belirtilerini gördüğünüzde derhal bir veterinere gitmeniz tavsiye edilir.",
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
