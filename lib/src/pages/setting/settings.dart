import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizstar/main_drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: mainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Ecura Team"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/ecura.jpeg'),
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 10.0),
            Card(
              margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.indigo,
                    ),
                    title: Text("Notificaciones y sonidos"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Colors.indigo,
                    ),
                    title: Text("Privacidad y seguridad"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.play_circle_filled,
                      color: Colors.indigo,
                    ),
                    title: Text("Reproduccion"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.data_usage,
                      color: Colors.indigo,
                    ),
                    title: Text("Datos y almacenamiento"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.indigo,
                    ),
                    title: Text("Carpetas"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.indigo,
                    ),
                    title: Text("Idioma"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.help_outline,
                      color: Colors.indigo,
                    ),
                    title: Text("Preguntas frecuentes"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.security,
                      color: Colors.indigo,
                    ),
                    title: Text("Politica de privacidad"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8.0,
    ),
    width: double.infinity,
    height: 1.0,
    color: Colors.grey.shade400,
  );
}
