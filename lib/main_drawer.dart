import 'package:flutter/material.dart';
import 'package:quizstar/src/pages/chatecura/chat.dart';
import 'package:quizstar/src/pages/modules/modules.dart';
import 'package:quizstar/src/pages/login/login_page.dart';
import 'package:quizstar/src/pages/profile/profile_page.dart';
import 'package:quizstar/src/pages/setting/settings.dart';
import 'src/pages/profile/acercadepage.dart';
import 'src/pages/modules/modules.dart';

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
                                BorderRadius.all(Radius.circular(35.0)),
                            child: Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Image.asset(
                                "images/logo_transparent_background.png",
                                width: 80,
                                height: 80,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerfilPage(),
                  ));
            },
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
                    builder: (context) => Modules(),
                  ));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Iniciar Sesión',
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
            title: Text('Chatea con ecura',
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
          SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: double.infinity,
            height: 1.0,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text('Ajustes',
                style: TextStyle(
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
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
        ],
      ),
    );
  }
}
