import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Fars extends StatefulWidget {
  @override
  _FarsState createState() => _FarsState();
}

class _FarsState extends State<Fars> {
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
            title: Text('Fars Kedisi Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/kedi3.jpg",
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
                Dgs.ad = "Kediniz";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Fars";
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
      "Kökeni çok eski zamanlara dayanan bu sevimli kedi birçok ırka oranla daha fazla bakım ister ve hastalıklara olan yatkınlığı daha fazladır"
      "Eğer hareketli, ortalıkta koşuşturup oyun oynayan bir kedi dost hayal ediyorsanız İran kedisi size göre değildir, çünkü bu kediler son derece sakin yapılarıyla tanınırlar."
      "Zamanlarının çoğunu adeta bir biblo edasıyla oturarak ya da yatarak geçirirler.",
      softWrap: true,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
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
                    "İran kedileri genelde ıslak mama veya kuru gıda tüketmeyi sever."
                    "Islak mamalar çoğu kedinin hoşuna gider ancak zamanında tüketilmelidirler."
                    "İran kedileri proteinlere çok düşkündür bu yüzden onu protein ağırlıklı bir şekilde beslemelisiniz"
                    "Karbonhidrat ağırlıklı besinlere İran kedilerinin çok ihtiyacı yoktur o tür besinleri kedinizden uzak tutabilirsinz.",
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
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
                    "Bu kedileri polikistik böbrek hastalığına karşı her yıl ultrason muayenesinden geçirmek, nefes alma sorunları sebebiyle kalp kontrollerini yaptırmak gerekir."
                    "Yani, bir İran kedisi evlat edindiğinizde sık sık veteriner ziyaretleri yapmayı ve bu ziyaretlerin maliyetlerini karşılamayı göze almanız gerekir."
                    "İran kedilerinin kilo alması kesinlikle engellenmelidir."
                    "Çünkü yine yukarıda da anlattığımız gibi zaten nefes alma sorunları yaşayan bu kedilerin alacağı fazla kilolar bu solunum problemleri ile birleşince ölümcül sonuçlar ortaya çıkabilir.",
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
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
                    "İran kedilerinin tuvalet eğitimi oldukça kolaydır,ona uygun bir kum kabı seçmeli ve eğer yavruysa bunu en küçük olacak şekilde almalısınız"
                    "Evinizin görünmeyen tarafına bu kum kabını koyarsanız kediniz 1 veya 2 hafta sonra artık tuvaletini oraya yapmaya alışacaktır ve unutmayın kediniz büyürse kum kabınızıda büyütün.",
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
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
                    "Yavru bir İran kedisine sahipseniz öncelikli yapmanız gereken şey onu yuvasına alıştırmak ve gözden kaybetmemek olacaktır çünkü bu kaybolma fırsatı onlara başka noktaları yuva seçme imkanı tanır."
                    "Yavru beslenmesi ise tıpkı yetişkin kedi beslenmesi gibidir fazladan bir bakım istemez."
                    "Unutmayın yavru bir İran kedisine tuvalet eğitimi vermek sizi ilerde büyük zahmetlerden kurtaracaktır.",
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
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
                    "İran kedisi türü itibariyle hastalığa çok yatkındır başlıca olan hastalıkları Trikobeozar yani fazlaca yutulan tüyün mide ve bağırsakta birikmesi"
                    "Polikistik böbrek hastalığı,yüzünün şeklinden ötürü yaşadığı solunum problemleri,yeterli nefes alamadıkları için yaşlandıklarında ortaya çıkan kalp problemleri"
                    "ve büyük ve düz gözlere sahip oldukları için çokca göz hastalıklarına maruz kalabilirler.",
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              )
            ],
          )
        ],
      ),
    ));
