import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Sfenks extends StatefulWidget {
  @override
  _SfenksState createState() => _SfenksState();
}

class _SfenksState extends State<Sfenks> {
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
            title: Text('Sfenks Kedisi Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/kedi4.jpg",
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
                Tgs.ism = "Sfenks";
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
      "Dünyanın en farklı ve en dikkat çekici kedileri arasında bulunan Sfenksler, tüysüz ve sarkık derileri ile kendilerine has bir görünüşe sahiptir."
      "İyi huylu, akılı, canlı ve uysal kedi cinsleri arasında yer alan Sfenks Kedisi, aynı zamanda dokunulduğu zaman insanların sımsıcak ve yumuşak bir hisse kapılmalarını sağlayacak kadar da tatlı vücut yapısına sahiplerdi"
      "Sfenksler, genel olarak ilgi seven kedi türleri arasına girmektedir. Gittiği her ortamda insanların ilgisini çekmeyi başaran Sfenksler, bunun için atletik yapısını ve duygusal samimiyetini kullanmaktadır.",
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
                    "Sfenks kedileri yapı itibariyle hızlı bir metabolizmaya sahiptir ve bolca besine ihtiyaç duyar."
                    "Başlıca ihtiyaç duydukları şey proteindir ve bolca gerekir görünüş olarak öyle gözükmesede Sfenks kedilerinin en önemli besin maddesi proteinlerdir."
                    "Yağ ve karbonhidrat bakımından ise dengeli bir beslenmelidirler.Kuru mamalar ise bir Sfenks kedisini beslerken başlıca uzak durmamız gereken besin türüdür.",
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
              "Bakım",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                    "Sfenks kedileri tüysüz olması ile beraber sanki bakıma çok da ihtiyaç duymayan bir kedi olarak lanse edilmektedir."
                    "Fakat bu düşünce yanlış ve Sfenks kedilerinin sağlığı için çok tehlikeli bir durumdur."
                    "Sfenks kedilerinin derilerine her zaman yağlar ve losyonlar uygulanmalı, bu sayede derileri nemli kalacak şekilde tutulmalıdır. "
                    "Eğer deri bakımları eksik uygulanırsa; cilt ve deri Hastalıkları oluşabilir."
                    "Bunun yanında vücut yağlarının evin dört bir yanına bulaşmaması için de düzenli olarak banyolarının yaptırılması gerekir.",
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
                    "Sfenks kedisi insanlarla en iyi anlaşan kedi türü olduğu için sizin sözünüzü kolaylıkla dinleyecektir."
                    "Yani ona tuvalet eğitimi verirken hiç zorlanmayacaksınız çünkü kendisi yapı itibariyle temizdir."
                    "Gereken eğitimi vermek için ona uygun büyüklükte bir kum kabı seçmelisiniz ve yuvasının bulunmadığı bir noktaya koymalısınız."
                    "Tuvaleti geldiğinde zaten kendisi kum kabındaki kumu görüp tuvaletini oraya yapmak isteyecektir ancak bu süreçin alışkanlık haline gelmesi 1 haftayı bulabilir.",
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
                    "Yavru bir Sfenks kedisinin bakımı normal kediden pek farklı değildir ancak dikkat etmeniz gereken noktalar beslenmesi ve tuvalet eğitimidir."
                    "Beslenme olarak ıslak mama tercih edilmelidir,derilerini korumak için koruyucu yağlar sürülmelidir."
                    "Tuvalet eğitimi olarak yine boyutuna göre bir kum kabı almanız gerekmektedir belli bir süre kendisi de buna alışacaktır.",
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
                  "Diş eti hastalıkları Sfenks türünde sıklıkla meydana geldiği için, en azından haftalık bir şekilde ağız bakımı yapılmalıdır."
                  "Sfenks kedisinin göz kenarları da, yine oluşabilecek akıntılara karşı düzenli olarak silinmelidir. Kulaklarda biriken kirler, pamuk ve suyla seyreltilmiş elma sirkesi ile temizlenmelidir."
                  "Kulak çubukları kullanılmamalı, bu sayede kalıcı kulak problemleri kolayca engellenmekted",
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
