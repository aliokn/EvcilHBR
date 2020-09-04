import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Alm extends StatefulWidget {
  @override
  _AlmState createState() => _AlmState();
}

class _AlmState extends State<Alm> {
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
            title: Text('Alman Kurdu Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/k2.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [Dekor(), krtgnl, krtbsl, krtbkm, krtyvru, krthstlk],
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ParkArama()));
            },
            child: buildButtonColumn(
                Colors.cyan, FontAwesomeIcons.tree, 'En yakın park'),
          ),
          InkWell(
              onTap: () {
                Dgs.ad = "Köpeğiniz";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Alman";
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
    "Alman kurdu ya da diğer ismi ile Alman çoban köpeği dünyanın en tanınan, sevilen ve bunların yanı sıra birçok farklı işte insanlara yardım eden köpek ırklarından biri."
    "Bu zeki, yetenekli, çalışkan, cesur ve sadık köpekler insanların en yakın dostlarından biri olarak görülüyor ve ülkemizde de en fazla birlikte yaşanılan köpekler arasında yer alıyor."
    "Alman kurdu büyük bir köpek ırkıdır, iri ve gösterişli vücudu bu köpeklere duyulan hayranlıkta önemli rol oynar",
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
                  "En ucuz ve sağlıklı besleme yöntemi kuru mamadır."
                  "Çünkü köpeğinizin alabileceği her türlü vitamin, mineral, protein bu mamalar içinde mevcuttur."
                  "Burada en önemli şey köpeğinizin yediği kadar dışkı değil daha azını çıkarmasıdır."
                  "Buradan da yediği mamanın ne kadarını vücudunda sin­dirip yararsız kalan kısmını dışarı attığını anlayabilirsiniz."
                  "Evde hazırladığınız mamalar hem vaktimizi almakta hem de çok zahmetli olmakla birlikte köpeğini­zin dışkısının da çok pis kokmasına sebep olmaktadır."
                  "Alacağınız kuru mamaların içerikleri ve vücutta sindirim oranları önemlidir. Sırf kuru mama vermek için belli üreticilerin ürettikleri çiftlik mamalarının hiç bir yararı yoktur",
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
                  "Alman kurdu çok tüy döker, bu nedenle tüylerini her gün düzenli taramak gerekir. Enerjik bir ırk olduğu için egzersiz ihtiyacı yüksektir, bu köpekleri her gün düzenli dolaştırmanın yanı sıra koşmalarını, enerjilerini harcamalarını sağlamak gerekir, oyun oynamak da egzersiz ihtiyaçlarını karşılamakta yardımcı olabilir."
                  "Bunların dışında tüm köpekler gibi aşılarını yaptırmak, düzenli veteriner kontrolüne götürmek, kulak ve diş temizliğine özen göstermek Alman kurdu bakımı için yeterlidir.",
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
Widget krttvlt = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Tuvalet Eğitimi",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Köpeklerin yemek ve su ihtiyaçlarını giderdikten sonra tuvalet ihtiyaç duyarlar bu zaman içerisinde köpeğinizin yemeğini yedikten 5 ile 10 dakika içersinde tuvalet gereksinimi olacaktır, bu zaman dilimi içerisinde Köpeği dışarı çıkarmalısınız. Öncelikle köpeğinizin tuvaletini yapması için gerekli bir alanı seçmeniz gerekmektedir.Köpeğinizi bu alana götürdüğünüz zaman serbest bırakmayı yada kayışını biraz uzun tutup kendisi için uygun bir alan seçmesine izin verin ."
                  "Tuvaletini yaptığı zaman onu ödüllendirin .Köpeğinizi bir daha dışarı çıkardığınız zaman tuvaletini yaptığı alana tekrar götürün bu alana köpeğiniz tuvaletini tekrar yapacaktır."
                  "Bir zamandan sonra artık köpeğiniz bu bölgeye geldiğinde tuvalet gereksinimini bu alanda giderecektir.",
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
Widget krtyvru = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Yavru Bakımı",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Yavru köpeğinizin gelişimi için ilk 1 yıl çok önemlidir. Bu süre boyunca, yavru köpeğinizin dişlerinin ve kemiklerinin güçlenmesi, vücut işlevlerinin düzgün gelişmesi ve parlak gözleri ile sağlıklı ve ışıltılı tüylere sahip olması için üstün bir beslenmeye ihtiyacı vardır."
                  "Yavru köpeğinizin maması, büyüme ve gelişim döneminde ihtiyaç duyacakları, proteinleri oluşturan aminoasit grup asit, kalsiyum ve fosfor gibi gerekli olan besin maddelerini doğru ve dengeli miktarlarda içermelidir"
                  "Yavru köpeğinize yemek artıklarını vermeyin. Bunu yapmak, yemek seçmesine neden olabileceği gibi, yemek artıkları genelde aşırı kalorili olduğu için obeziteye zemin hazırlayabilir",
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
                  "Bu güzel ve çevik köpekler ne yazık ki bazı hastalıklara yatkındır. Irkın yatkınlığı olan hastalıklar,Kalça ve dirsek displazisi,Artrit,Kulaklarının açık ve geniş olması sebebiyle kulak enfeksiyonları"
                  "Alerjiler,Tiroit sorunları,Bazı kanser türleri ancak bu sayılan hastalıklar her zaman hepsinde görülmez.",
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
