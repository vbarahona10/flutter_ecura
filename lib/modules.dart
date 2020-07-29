import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/quizpage.dart';
import 'package:quizstar/src/pages/spam.dart';
import './main_drawer.dart';
import 'details_screen.dart';
import 'details_screen.dart';
import 'details_screen.dart';
import 'details_screen.dart';
import 'home.dart';

class Modules extends StatefulWidget {
  @override
  _moduleState createState() => _moduleState();
}

class _moduleState extends State<Modules> {
  List<String> images = [
    "images/huevo.jpg",
    "images/pollito.jpg",
    "images/gallo.jpg",
  ];

  List<String> des = [
    "Principiante",
    "Intermiedio.",
    "Avanzado",
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

          // ESTE ES FUNCIONAL
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DetailsScreen(),
          //   ),
          // );
          if (langname == 'Principiante') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homepage(),
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
          customcard("Principiante", images[0], des[0]),
          customcard("Intermedio", images[1], des[1]),
          customcard("Avanzado", images[2], des[2]),
        ],
      ),
    );
  }
}
