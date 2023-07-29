class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledlist = List<String>.from(answers);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}
