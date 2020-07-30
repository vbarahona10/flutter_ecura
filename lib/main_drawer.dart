import 'package:flutter/material.dart';
import 'package:quizstar/chat.dart';
import 'package:quizstar/chatpage.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/src/pages/login_page.dart';
import 'details_screen.dart';

class mainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Column(
                      children: <Widget>[
                        Material(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/ecura.jpeg",
                                width: 80,
                                height: 80,
                              ),
                            ))
                      ],
                    ),
                  ),
                  Text(
                    'Ecura',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Modulos',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homepage(),
                  ));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Acerca de',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Ingresar',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chatea con SecutirityApp',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chat()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chat()));
            },
          ),
        ],
      ),
    );
  }
}
