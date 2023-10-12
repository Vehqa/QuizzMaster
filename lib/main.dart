import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(q: 'La guerre de Sécession a eu lieu au 19e siècle ?', a: true),
    Question(q: 'Le mur de Berlin est tombé en 1989 ?', a: true),
    Question(q: 'La Mona Lisa a été peinte par Vincent van Gogh ?', a: false),
    Question(q: 'La révolution industrielle a commencé au 18e siècle', a: true),
    Question(q: 'La peste noire a été causée par des puces de rat ?', a: true)
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'Vrai',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;
                if (correctAnswer == true) {
                  print('user got it good');
                } else {
                  print('user got it wrong');
                }
                setState(() {
                  questionNumber++;
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
                //L'utilisateur choisis Vrai
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'Faux',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;
                if (correctAnswer == false) {
                  print('user got it good');
                } else {
                  print('user got it wrong');
                }
                setState(() {
                  questionNumber++;
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
                //L'utilisateur choisis faux
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
