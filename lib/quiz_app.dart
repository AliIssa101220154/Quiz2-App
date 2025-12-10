import 'package:ali_issa/screens/questions_screen.dart';
import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'package:ali_issa/data/questions.dart';
import 'package:ali_issa/models/quiz_question.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int index = 0;
  int numberOfCorrectAnswers() {
    int correct = 0;
    if (selectedAnswers[index] == questions[index].answers[0]) {
      correct++;
    }
    return correct;
  }

  List<String>? answers;
  // selectedAnswers is initially filled with empty strings indicating that the question is not yet answered.
  List<String> selectedAnswers = List.filled(questions.length, "");

  String activeScreenName = "questions-screen";

  void _restart() {
    setState(() {
      selectedAnswers = List.filled(questions.length, "");
      activeScreenName = 'questions-screen';
    });
  }

  void submit() {
    setState(() {
      activeScreenName = 'result-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreen = QuestionsScreen(onSelectAnswer: onSelectAnswer, submit: submit);

    if(activeScreenName=='result-screen'){
      
    }
    return Scaffold(backgroundColor: Colors.green, body: activeScreen);
  }
}
