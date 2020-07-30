import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/modules.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      drawer: mainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/ecura.jpeg",
                    width: 100,
                    height: 100,
                  ),
                )),
            Text(
              'Acerca de ECURA \n'
              'Esta aplicacion ha sido desarrollada por:'
              '\n Estudiantes de Maestria de Seguridad Informatica',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Material(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
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
            )
          ],
        ),
      ),
    );
  }
}
