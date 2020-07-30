import 'package:flutter/material.dart';
import 'package:quizstar/main_drawer.dart';
import 'package:quizstar/modules.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_logic.dart';

QuizLogic quizLogic = new QuizLogic();

class SpamQuizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pregunta SPAM"),
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
  final List<Widget> scoreKeeper = [];
  int totalCorrect = 0;
  int totalQuestions = 0;

  void checkAnswer(bool value) {
    if (quizLogic.getAnswer() == value) {
      print("Respuesta correcta");
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
      totalCorrect++;
    } else {
      print("Respuesta incorrecta");
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }
    quizLogic.printQuestionsLength();
    quizLogic.printQuestionNumber();
    totalQuestions++;

    if (quizLogic.isFinished() == true) {
      Alert(
          context: context,
          title: "Termino",
          desc:
              "Ha acertado un total de $totalCorrect de $totalQuestions preguntas!",
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

      quizLogic.reset();
      scoreKeeper.clear();
      totalCorrect = 0;
      totalQuestions = 0;
    } else {
      quizLogic.nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.amber[800],
              ),
              child: Center(
                child: Text(
                  quizLogic.getQuestion(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  textColor: Colors.white,
                  color: Colors.greenAccent[400],
                  child: Text(
                    "VERDADERO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      checkAnswer(true);
                    });
                  },
                ),
              )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  textColor: Colors.white,
                  color: Colors.redAccent[400],
                  child: Text(
                    "FALSO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      checkAnswer(false);
                    });
                  },
                ),
              ))
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: scoreKeeper,
        )),
      ],
    );
  }
}
