class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  //QuizQuestion('Type the question here', ['Answer 1', 'Answer 2', 'Answer 3', 'Answer 4']);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledlist = List<String>.from(answers);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}
