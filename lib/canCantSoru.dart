import 'package:flutter/material.dart';
import 'package:waldo/index.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new AnimalQuiz();

class AnimalQuiz {
  var questions = [
    "İngilizce 'İngilizce konuşabiliyorum' nasıl söylenir?",
    "İngilizce 'Onlar hızlı koşabiliyor' nasıl söylenir?",
    "İngilizce 'O araba sürebiliyor' nasıl söylenir?",
    "İngilizce 'Seni duyamıyorum' nasıl söylenir?",
    "İngilizce 'Yüzebiliyor musun' nasıl söylenir?"
  ];

  var choices = [
    ["They can run fast.", "Can I go out", "I can speak English.", "I can’t hear you."],
    ["Can I go out", "Can you wear", "I can speak English.", "They can run fast."],
    ["He can drive a car.", "I can speak English.", "They can run fast.", "Can I go out"],
    ["I can speak English.", "I can’t hear you.", "Can I go out", "They can run fast."],
    ["They can run fast.", "He can drive a car.", "Can you swim", "I can speak English."],
  ];

  var correctAnswers = ["I can speak English.", "They can run fast.", "He can drive a car.", "I can’t hear you.", "Can you swim"];
}

class canCartSoru extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new canCartSoruState();
  }
}

class canCartSoruState extends State<canCartSoru> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: new AppBar(
            title: new Text("WALDO English Learning Game"),
            backgroundColor: Color.fromARGB(255, 138, 163, 175),
          ),
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),
                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Question ${questionNumber + 1} of ${quiz.questions.length}",
                        style: new TextStyle(fontSize: 22.0),
                      ),
                      new Text(
                        "Score: $finalScore",
                        style: new TextStyle(fontSize: 22.0),
                      )
                    ],
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Text(
                  quiz.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore = finalScore + 10;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][0],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore = finalScore + 10;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][1],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore = finalScore + 10;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][2],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore = finalScore + 10;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][3],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.all(15.0)),
                new Container(
                    alignment: Alignment.bottomCenter,
                    child: new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => index()));
                        },
                        child: new Text(
                          "ÇIKIŞ",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ))),
              ],
            ),
          ),
        ));
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key? key, required this.score}) : super(key: key) {
    // TODO: implement
    throw UnimplementedError();
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Final Score: $score",
                style: new TextStyle(fontSize: 35.0),
              ),
              new Padding(padding: EdgeInsets.all(30.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text(
                  "Reset Quiz",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
