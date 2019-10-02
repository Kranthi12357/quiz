import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Question.dart';
import 'package:flutter_app/answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppful();
  }
}

// ignore: non_constant_identifier_names
class MyAppful extends State<MyApp> {
  var question = [
    {
      'question': 'What is your favourite color ?',
      'answers': ['blue', 'red', 'white', 'green']
    },
    {
      'question': 'What is your favourite dish ?',
      'answers': ['chicken', 'mutton', 'brinjal', 'spicy']
    },
    {
      'question': 'what is your favourite animal ?',
      'answers': ['dog', 'cat', 'tiger', 'lion']
    }
  ];
  var index = 0;
  var total = 0;

  void answer() {
    setState(() {
      index = index + 1;
    });
  }

  void restart() {
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: question.length > index
            ? Column(
                children: [
                  Question(question[index]['question']),
                  ...(question[index]['answers'] as List<String>).map((value) {
                    return answers(answer, value);
                  }).toList()
                ],
              )
            : Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'you did it',
                      style: TextStyle(fontSize: 28),
                    ),
                    FlatButton(
                      child: Text(
                        'restart the quiz',
                      ),
                      textColor: Colors.cyan,
                      onPressed: restart,
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
