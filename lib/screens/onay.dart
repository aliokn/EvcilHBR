import 'package:flutter/material.dart';
import 'package:proje_1/screens/home.dart';

class Onay extends StatefulWidget {
  @override
  _OnayState createState() => _OnayState();
}

class _OnayState extends State<Onay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Ekran())),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 300,
              ),
              Text(
                "İşleminiz tamamlandı",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
