import 'package:flutter/material.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/bukl.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/ig.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/yl.dart';

class Surungenler extends StatefulWidget {
  @override
  _SurungenlerState createState() => _SurungenlerState();
}

class _SurungenlerState extends State<Surungenler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000272),
      body: Container(
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/surungen1.jpg"),
                        fit: BoxFit.fill)),
                child: InkWell(
                    splashColor: Colors.teal,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bkl()));
                    },
                    child: Center(
                      child: Text(
                        "Bukalemun",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/surungen2.jpg"),
                        fit: BoxFit.fill)),
                child: InkWell(
                    splashColor: Colors.teal,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ig()));
                    },
                    child: Center(
                      child: Text(
                        "İguana",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/surungen3.jpg"),
                        fit: BoxFit.fill)),
                child: InkWell(
                    splashColor: Colors.teal,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Yilan()));
                    },
                    child: Center(
                      child: Text(
                        "Yılan",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
