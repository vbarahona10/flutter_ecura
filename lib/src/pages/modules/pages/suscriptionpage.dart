import 'package:flutter/material.dart';

class Suscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // physics: BouncingScrollPhysics(),
          //padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/logo_transparent_background.png",
                width: 250,
                height: 250,
              ),
              CustomListTile(
                  titleText: 'Plan  Offline',
                  subtitleText:
                      'Omita los largos tiempos de descarga y revise su plan de estudios en cualquier momento.'),
              CustomListTile(
                  titleText: 'Características premium',
                  subtitleText:
                      '¡Desbloquee las próximas funciones profesionales como el modo oscuro y más!'),
              CustomListTile(
                  titleText: 'Actualizaciones',
                  subtitleText:
                      'Sus contribuciones nos ayudara a proporcionar mejores funciones y los ultimos contenidos en Seguridad de la Informacion.'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {
                    // _launchURL(instagramUrl);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              // Color(0xFFED74CE),
                              // Color(0xFF522AEA),
                              Color(0xFF3F51B5),
                              Color(0xFF38eaf6),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      topRight: Radius.circular(5)),
                                  color: Color(0xFFFBC02D),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text('Save 20%',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        )),
                                  ],
                                )),
                          ),
                          Container(
                              constraints: BoxConstraints(
                                  maxWidth: 300.0, minHeight: 60.0),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '\$3.99 por modulo',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'ECURA SecurityApp',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;

  const CustomListTile(
      {Key key, @required this.titleText, @required this.subtitleText})
      : assert(titleText != null),
        assert(subtitleText != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check_circle,
        color: Color(0xFF3F51B5),
      ),
      title: Text(
        titleText,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  final String boldText;

  const BoldText({Key key, @required this.boldText})
      : assert(boldText != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        boldText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
