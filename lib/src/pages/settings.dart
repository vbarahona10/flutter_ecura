import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizstar/main_drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Configuracion'),
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
                trailing: Icon(Icons.edit),
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
                      Icons.lock_outline,
                      color: Colors.indigo,
                    ),
                    title: Text("Cambiar Contraseña"),
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
                      FontAwesomeIcons.language,
                      color: Colors.indigo,
                    ),
                    title: Text("Cambiar Lenguaje"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Configuracion de notificaciones",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Colors.indigo,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Recibir notificaciones"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.indigo,
                    contentPadding: const EdgeInsets.all(0),
                    value: false,
                    title: Text("Recibir noticias"),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    activeColor: Colors.indigo,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Recibir notificaciones de ofertas"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Recibir actualizaciones automaticas"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
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
