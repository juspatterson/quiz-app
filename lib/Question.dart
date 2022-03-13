import 'dart:core';

class Question {
  final String question;
  final List answers;
  final String correctAnswer;

  Question(this.question,this.answers,this.correctAnswer);

}

class Questions {
  static List <Question> questions =
  [
    Question('Which company developed android?', ['Apple','Google','Android Inc.','Nokia'], 'Android Inc.'),
    Question('Which company bought android?', ['Apple','Google','Samsung','Nokia'], 'Google'),
    Question('Android is based on which kernel?', ['Linux kernel','Windows kernel','MAC kernel','Hybrid Kernel'], 'Linux kernel'),
    Question('The official programming language for Android is?', ['Java','Kotlin','BASIC','Swift'], 'Java'),
    Question('What is android?', ['Desktop Operating System','Programming Language','Mobile Operating System','Database'], 'Mobile Operating System'),
    Question('Android supports which features.', ['Multitasking','Bluetooth','Video calling','All of the answers'], 'All of the answers'),
    Question('If you want to increase the whitespace between widgets, you will need to use the ____________ property', ['Android:padding','Android:digits','Android:capitalize','Android:autoText'], 'Android:padding'),
    Question('For creating user interface in Android, you have to use?', ['Eclipse','Java and XML','Java and SQL','Java and Pl/sql'], 'Java and XML'),
    Question('ADB stands for?', ['Android Debug Bridge','Application Debug Bridge','Android Data Bridge','Application Data Bridge'], 'Android Debug Bridge'),
    Question('What is mean by ANR?', ['Application Not Recognized','Android Not Recognized','Application Not Responding','none of these'], 'Application Not Responding')
  ];

}