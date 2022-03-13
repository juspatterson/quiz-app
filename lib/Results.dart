import 'package:flutter/material.dart';
import 'dart:io';

import 'package:quiz_app/Quiz.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData.light(), // Provide light theme
  darkTheme: ThemeData.dark(),
  themeMode: ThemeMode.system,
));


class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState(results);
  int results;
  Results(this.results);
}



class _ResultsState extends State<Results> {
  final int results;

  _ResultsState(this.results);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 50),
      minimumSize: Size(150, 50),
      primary: Colors.green,
      shape:  StadiumBorder(),
    );

    return Scaffold(

      body: Center(
        child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You got $results out of 10 questions correct',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: style,
                child: const Text('Exit'),
                onPressed: () {setState(() {
                  exit(0);
                });}
            ),
          ],
        ),
      ),
    ));
  }
}

