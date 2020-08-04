import 'package:flutter/material.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/src/pages/spam/iniciospam.dart';
import 'package:quizstar/src/pages/wifi/iniciowifi.dart';

class InstruccionsWifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.indigo,
      ),
      drawer: mainDrawer(),
      body: new Container(
        color: Colors.white12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
                // borderRadius: BorderRadius.all(Radius.circular(80.0)),
                child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Image.asset(
                "images/instruccionesSpam.png",
                width: 600,
                height: 600,
              ),
            )),
            FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iniciowifi()),
                  );
                },
                child: Image.asset(
                  'assets/button3.png',
                  height: 60,
                )),
          ],
        ),
      ),
    );
  }
}
