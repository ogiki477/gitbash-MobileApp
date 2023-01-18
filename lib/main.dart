import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite Color?',
      "what's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text(
                'Answer 1',
              ),
            ),
            ElevatedButton(
              onPressed: () => print("Question 2 answered"),
              child: Text(
                'Answer 2',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Question 3 answered successfully");
              },
              child: Text(
                'Answer 3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
