import 'questions.dart';

int _questionNumber = 0;

class QuizLogic {
  List<Question> _questions = [
    Question("El SPAM es algo inofensivo", false),
    Question(
        "Debemos de abrir todo correo que recibamos aunque no sepamos quien lo envia",
        false),
    Question("El correo Spam es algo que debamos borrar", true)
  ];
  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinished() {
    if (_questionNumber == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int printQuestionNumber() {
    print(_questionNumber);
  }

  int printQuestionsLength() {
    print(_questions.length);
  }

  void reset() {
    _questionNumber = 0;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
}
