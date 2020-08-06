import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizstar/src/pages/spam/instrucspam.dart';
import 'package:quizstar/src/pages/spam/spamquiz.dart';
import 'package:quizstar/src/pages/wifi/instruccionswifi.dart';
import 'package:quizstar/src/pages/wifi/wifiquiz.dart';

class Iniciowifi extends StatefulWidget {
  Iniciowifi({Key key}) : super(key: key);

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
    home: Iniciowifi(),
  );
}

class _InicioState extends State<Iniciowifi> {
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
                          builder: (context) => InstruccionsWifi()),
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
                      MaterialPageRoute(builder: (context) => WifiQuizz()),
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
