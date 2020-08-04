import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizstar/src/pages/teletrabajo/pages/instruccionspage.dart';
import 'homePage.dart';

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Inicio(),
  );
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    _naoGira();
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.indigo, Colors.indigo])),
          margin: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/tele.png",
                height: h * 0.2,
              ),
              SizedBox(
                height: h * 0.05,
              ),
              /*Text(
                "Jogo da memoria",
                style: TextStyle(fontSize: 40, fontFamily: "VT323", color: Colors.white),
              ),*/
              Text(
                "",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "8bt",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: h * 0.05,
              ),
              FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Instruccionspage()),
                    );
                  },
                  child: Image.asset(
                    'assets/button2.png',
                    height: 60,
                  )),
              FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Image.asset(
                    'assets/button1.png',
                    height: 60,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void _naoGira() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
