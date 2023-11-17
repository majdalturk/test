import 'package:flutter/material.dart';
import 'package:quiz_app/screen/Quiz_Screen.dart';

checkAnswer(
    {required bool isCorrect,
    required BuildContext context,
    required num availableTime,
    required num answerTime}) {
  if (availableTime > answerTime) {
    if (isCorrect) {
      controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
      score1++;
    } else {
      controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
      score2++;
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: Text('Time out'),
      backgroundColor: Colors.blue,
    ));
  }
}
