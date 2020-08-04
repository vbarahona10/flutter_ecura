import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/src/pages/modules/modules.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
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
                "images/logo_transparent_background.png",
                width: 150,
                height: 150,
              ),
            )),
            Text(
              'Esta aplicacion ha sido desarrollada por:'
              '\n Estudiantes de Maestria de Seguridad Informatica',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigoAccent[900],
                  fontFamily: "Alike-Regular"),
            ),
            Material(
                //  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Image.asset(
                "images/logo_umg.png",
                width: 100,
                height: 100,
              ),
            )),
            RaisedButton(
              child: Text('Ir a Modulos'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Modules(),
                    ));
                //Navigator.pushNamed(context, '/details_screen');
                //Navigator.of(context).pushNamed(DetailsScreen.routename);
              },
            ),
          ],
        ),
      ),
    );
  }
}
