import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/method/answer.dart';
import 'package:quiz_app/method/question.dart';
import 'package:quiz_app/model/Quiz_model.dart';

PageController controller = PageController();
int score = 0;
num timer = 0;
num score1 = 0;
num score2 = 0;
Icon circle = Icon(Icons.abc);
bool isCorrectAnswer = true;

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (t) {
      setState(() {
        timer++;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: questions.length,
        itemBuilder: (context, index) => Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFA42FC1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    width: 337,
                    height: 228,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 150, left: 10),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.jumpToPage(0);
                                timer = 0;
                                score1 = 0;
                                score2 = 0;
                              },
                              icon: const Icon(
                                Icons.arrow_back_sharp,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 220),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 28,
                    top: 120,
                    child: SizedBox(
                      width: 281,
                      height: 170,
                      child: Card(
                        shadowColor: Colors.black45,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 250,
                                height: 20,
                                child: Row(
                                  children: [
                                    Container(
                                      constraints:
                                          BoxConstraints(maxHeight: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            score1.toString(),
                                            style: TextStyle(
                                                color: Color(0xFF1F8435)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: AnimatedContainer(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFF1F8435),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              duration:
                                                  Duration(milliseconds: 500),
                                              width: score1 * 10,
                                              height: 6,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    SizedBox(
                                      width: 100,
                                      height: 20,
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: AnimatedContainer(
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFD05A04),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                duration:
                                                    Duration(milliseconds: 500),
                                                width: score2 * 10,
                                                height: 6,
                                              ),
                                            ),
                                            Text(
                                              score2.toString(),
                                              style: TextStyle(
                                                  color: Color(0xFFD05A04)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10),
                              child: Text('Question ' +
                                  questions[index]
                                      .question[index]
                                      .length
                                      .toString() +
                                  "/" +
                                  questions.length.toString()),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text(questions[index].question),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 100,
                    child: CircleAvatar(
                      maxRadius: 30,
                      child: CircularProgressIndicator(
                        value: timer * 0.05,
                        strokeWidth: 2.5,
                        strokeCap: StrokeCap.round,
                        color: Color(0xFFA42FC1),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 120,
                      left: 166,
                      child: Text(
                        timer.toString(),
                        style: TextStyle(color: Color(0xFFA42FC1)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Text(""),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SizedBox(
                  height: 350,
                  child: ListView.builder(
                    itemCount: questions[index].answers.length,
                    itemBuilder: (context, ind) => InkWell(
                      onTap: () {
                        bool selectedAnswer =
                            questions[index].answers[ind].isCorrect;
                        setState(() {
                          isCorrectAnswer = selectedAnswer;
                        });
                        checkAnswer(
                            isCorrect: questions[index].answers[ind].isCorrect,
                            context: context,
                            answerTime: timer,
                            availableTime: questions[index].availableTime);
                        timer = 0;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1.4, color: Color(0xFFA42FC1))),
                          child: ListTile(
                              title: Text(questions[index].answers[ind].answer),
                              trailing: isCorrectAnswer &&
                                      questions[index].answers[ind].isCorrect
                                  ? const CircleAvatar(
                                      child: Icon(
                                        Icons.check_circle_sharp,
                                        color: Color(0xFFA42FC1),
                                      ),
                                      maxRadius: 13,
                                    )
                                  : !isCorrectAnswer &&
                                          !questions[index]
                                              .answers[ind]
                                              .isCorrect
                                      ? CircleAvatar(
                                          maxRadius: 13,
                                          child: Icon(
                                            Icons.cancel,
                                            color: Colors.red,
                                          ),
                                        )
                                      : null),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
