import 'question.dart';

class QuizzBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'La guerre de Sécession a eu lieu au 19e siècle ?', a: true),
    Question(q: 'Le mur de Berlin est tombé en 1989 ?', a: true),
    Question(q: 'La Mona Lisa a été peinte par Vincent van Gogh ?', a: false),
    Question(q: 'La révolution industrielle a commencé au 18e siècle', a: true),
    Question(q: 'La peste noire a été causée par des puces de rat ?', a: true),
    Question(q: 'Albert Einstein a découvert la gravité ?', a: false),
    Question(q: 'La Révolution française a eu lieu au 18e siècle ?', a: true),
    Question(
        q: 'La première loi de Newton dit que tout objet en mouvement reste en mouvement ?',
        a: true),
    Question(q: 'La guerre du Viêt Nam a duré plus de 20 ans ?', a: false),
    Question(
        q: 'La foudre est causée par la friction entre les nuages ?', a: false),
    Question(q: 'Les dauphins sont des poissons ?', a: false),
    Question(q: 'L\'eau bout à 100 degrés Fahrenheit ?', a: false),
    Question(
        q: 'La découverte de la pénicilline a révolutionné la médecine ?',
        a: true),
    Question(
        q: 'La Statue de la Liberté a été un cadeau de la France aux États-Unis ?',
        a: true),
    Question(
        q: 'La relativité restreinte d\'Einstein repose sur l\'équation E=mc^2 ?',
        a: true),
    Question(
        q: 'La conjecture de Poincaré, un problème mathématique majeur, a été démontrée en 1904 ?',
        a: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
