import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/src/bloc/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_crearFondo(context), _loginForm(context)],
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondo = Container(
      height: size.height * .4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Colors.indigo,
        Colors.indigo,
      ])),
    );

    return Stack(
      children: <Widget>[
        fondo,
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.person_pin_circle,
                color: Colors.white,
                size: 100.0,
              ),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              Text('Ecura - Security APP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ))
            ],
          ),
        )
      ],
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
                Text('Ingreso', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 60.0),
                _crearEmail(bloc),
                SizedBox(height: 30.0),
                _crearPassword(bloc),
                SizedBox(height: 30.0),
                _crearBoton(bloc, context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearEmail(LoginBloc bloc) {
    return StreamBuilder(
        stream: bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'ejemplo@gmai.com',
                  labelText: 'Correo Electrónico',
                  counterText: snapshot.data,
                  errorText: snapshot.error,
                  icon: Icon(
                    Icons.alternate_email,
                    color: Colors.indigo,
                  )),
              onChanged: bloc.changeEmail,
            ),
          );
        });
  }

  Widget _crearPassword(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                errorText: snapshot.error,
                labelText: 'Contraseña',
                icon: Icon(
                  Icons.lock,
                  color: Colors.indigo,
                )),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  Widget _crearBoton(LoginBloc bloc, BuildContext context) {
    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RaisedButton(
          onPressed: snapshot.hasData ? () => _login(bloc, context) : null,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
            child: Text('Ingresar'),
          ),
          elevation: 0.0,
          color: Colors.indigo,
          textColor: Colors.white,
        );
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context) {
    bool login = _validarLogin(bloc);

    if (login) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => homepage(),
          ));
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Información incorrecta'),
              content: Text('Credenciales inválidas'),
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

  bool _validarLogin(LoginBloc bloc) {
    Map<String, String> usuario1 = {
      'usuario': 'test@gmail.com',
      'password': 'Abc12345'
    };

    Map<String, String> usuario2 = {
      'usuario': 'test@gmail.com',
      'password': 'Abc12345'
    };

    List<Map<String, String>> usuarios = List();
    usuarios.add(usuario1);
    usuarios.add(usuario2);

    for (var element in usuarios) {
      if (element['usuario'] == bloc.email &&
          element['password'] == bloc.password) {
        return true;
      }
    }

    return false;
  }
}
