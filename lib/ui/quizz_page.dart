import 'package:flutter/material.dart';

import '../data/question.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quizz Page"),
          centerTitle: false,
        ),
        backgroundColor: Colors.blueGrey,
        body: Container());
  }

  @override
  State<QuizzPage> createState() => SomeQuizzPageState();
}

class SomeQuizzPageState extends State<QuizzPage> {
  List<Question> _questions = Question.getQuestionsExample();
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quizz Page"),
        centerTitle: false,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/france.jpg')),
            Container(
              margin: const EdgeInsets.all(40),
              child: Text(
                _questions[_questionIndex].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
                width: 160,
                child: ElevatedButton(
                    onPressed: () {
                      _checkAnswer(true, context);
                    },
                    child: Text('Vrai'))),
            SizedBox(
                width: 160,
                child: ElevatedButton(
                    onPressed: () {
                      _checkAnswer(false, context);
                    },
                    child: Text('Faux')))
          ],
        ),
      ),
    );
  }

  void _checkAnswer(bool userChoice, BuildContext context) {
    if (userChoice == _questions[_questionIndex].isCorrect) {
      final snackbar = const SnackBar(
        content: Text('Bonne réponse!'),
        duration: Duration(seconds: 1),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      _nextQuestion();
    } else {
      final snackbar = const SnackBar(
        content: Text('Fausse réponse!'),
        duration: Duration(seconds: 1),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      _nextQuestion();
    }
  }

  void _nextQuestion() {
    setState(() {
      if (_questionIndex < 4) _questionIndex++;
    });
  }
}
