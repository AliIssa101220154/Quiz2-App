class QuizQuestion {
  String text;
  List<String> answers;
  String correctAnswer;

  final List<String> shuffledAnswers;

  QuizQuestion({
    required this.text,
    required this.answers,
    required this.correctAnswer,
  }) : shuffledAnswers = List.of(answers)..shuffle();
}
