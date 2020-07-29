import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/quizpage.dart';
import 'package:quizstar/src/pages/spam.dart';
import './main_drawer.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/spam.png",
    "images/teletrabajo.jpg",
    "images/wifi.jpg",
  ];

  List<String> des = [
    "SPAM son mensajes no solicitados, sobre todo de tipo publicitario, y que son enviados de forma masiva.",
    "El teletrabajo, o trabajo a distancia, permite trabajar en un lugar diferente a la oficina.",
    "Wifi, señal inalambrica",
  ];

  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //   // in changelog 1 we will pass the langname name to ther other widget class
          //   // this name will be used to open a particular JSON file
          //   // for a particular language
          //   builder: (context) => getjson(langname),
          // ));
          if (langname == 'SPAM') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Spam(),
              ),
            );
          }
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ECURA",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      drawer: mainDrawer(),
      body: ListView(
        children: <Widget>[
          customcard("SPAM", images[0], des[0]),
          customcard("Teletrabajo", images[1], des[1]),
          customcard("Wifi", images[2], des[2]),
        ],
      ),
    );
  }
}
