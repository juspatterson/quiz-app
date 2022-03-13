import 'package:flutter/material.dart';
import 'dart:io';
import 'package:quiz_app/Quiz.dart';

void main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  home: Home(),
  theme: ThemeData.light(), // Provide light theme
  darkTheme: ThemeData.dark(),
  themeMode: ThemeMode.system,


));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}


class _HomeState extends State<Home> {


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
            const Text(
              'Quiz App',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold
              ),

            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz()));},
              child: const Text('Start'),
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

