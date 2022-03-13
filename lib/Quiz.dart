import 'package:flutter/material.dart';
import 'package:quiz_app/Question.dart';
import 'Results.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData.light(), // Provide light theme
  darkTheme: ThemeData.dark(),
  themeMode: ThemeMode.system,
  home: Quiz(),
));

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();


}

class _QuizState extends State<Quiz> {
  static const double fontSize = 30.0;
  var questionNumber = 0;
  var counterForCorrectAnswers = 0;
  var currentQuestion;
  var shuffleAnswers;
  var currentAnswersOne;
  var currentAnswersTwo;
  var currentAnswersThree;
  var currentAnswersFour;
  var currentCorrectAnswer;

  void initState() {
    questionAt(0);
    super.initState();
  }
  shuffle (int i) {
    var Answers = Questions.questions[i].answers;
    Answers.shuffle();

    return Answers;
  }

  questionAt(int i){
    currentQuestion = Questions.questions[i].question;
    shuffleAnswers = shuffle(i);
    currentAnswersOne = shuffleAnswers[0];
    currentAnswersTwo = shuffleAnswers[1];
    currentAnswersThree = shuffleAnswers[2];
    currentAnswersFour = shuffleAnswers[3];
    currentCorrectAnswer = Questions.questions[i].correctAnswer;
  }

  onPressed(String answer){
    if(answer == currentCorrectAnswer){
      counterForCorrectAnswers++;
    }

    if(questionNumber < 9){
      questionNumber++;
      questionAt(questionNumber);
    }else {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Results(counterForCorrectAnswers)));
    }

  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: fontSize),
      minimumSize: Size(double.infinity, 30),
      primary: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      alignment: Alignment.centerLeft
    );

    return
      Scaffold(

      body: Container(
        alignment: Alignment.topCenter,

        child: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          minimum: const EdgeInsets.all(10.0),
          child:SingleChildScrollView(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.start,


          children: <Widget>[
            Text(
              currentQuestion,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
              ),

            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: style,
              child: Text('A. $currentAnswersOne'),
                onPressed: () {setState(() {
                  onPressed(currentAnswersOne);
                });}
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: style,
                child: Text('B. $currentAnswersTwo'),
                onPressed: () {setState(() {
                 onPressed(currentAnswersTwo);
                });}
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: style,
                child: Text('C. $currentAnswersThree'),
                onPressed: () {setState(() {
                  onPressed(currentAnswersThree);
                });}
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: style,
                child: Text('Do. $currentAnswersFour'),
                onPressed: () {setState(() {
                  onPressed(currentAnswersFour);
                });}
            ),
          ],
        ),
      ),),
    ));
  }
}

