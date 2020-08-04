import 'package:flutter/material.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/src/pages/modules/modules.dart';
import 'package:quizstar/src/bloc/login_bloc.dart';
import 'package:quizstar/src/bloc/provider.dart';
import 'package:quizstar/src/pages/spam/spam_logic.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizLogic quizLogic = new QuizLogic();

class WifiQuizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WIFI Diversión"),
      ),
      drawer: mainDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: QuizPage(),
      )),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final myController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _loginForm(context),
    );
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: null,
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 180,
          )),
          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric(vertical: 50.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                Text('Escribe una contraseña robusta',
                    style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 60.0),
                _crearPassword(),
                SizedBox(height: 30.0),
                _crearBoton(bloc, context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          TextField(
            obscureText: _obscureText,
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
                suffixIcon: FlatButton.icon(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: _toggle,
                    label: Text('')),
                labelText: 'Contraseña',
                icon: Icon(
                  Icons.lock,
                  color: Colors.indigo,
                )),
            controller: myController,
          ),
        ],
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget _crearBoton(LoginBloc bloc, BuildContext context) {
    return RaisedButton(
      onPressed: () {
        validarContrasenia();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: Text('Validar!'),
      ),
      elevation: 0.0,
      color: Colors.yellow[700],
      textColor: Colors.white,
    );
  }

  validarContrasenia() {
    final password = myController.text;
    print(password);
    Pattern pattern = r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$';
    RegExp regExp = new RegExp(pattern);

    print(regExp.hasMatch(password));

    if (regExp.hasMatch(password)) {
      Alert(
          context: context,
          title: "¡Buen Trabajo!",
          desc:
              "Estas en lo correcto, una buena contraseña debe contener Mayúsculas, minúsculas, números y símbolos",
          buttons: [
            DialogButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Modules(),
                      ));
                },
                // => Navigator.pop(context),
                child: Text(
                  "Vuelve a los modulos",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ))
          ]).show();
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Oh!'),
              content: Text(
                  'Intenta de Nuevo, si tienes dudas como formular tu contraseña vuelve al video'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            );
          });
    }
  }
}
