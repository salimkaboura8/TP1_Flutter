class Question {
  String questionText;
  bool isCorrect;
  Question({required this.questionText, required this.isCorrect});

  static getQuestionsExample() {
    List<Question> _questions = [
      Question(
          questionText:
              'La France a dû céder l\'Alsace et la Moselle à l\'Allemagne après la guerre de 1870-1871?',
          isCorrect: true),
      Question(
          questionText: 'Le Mont Saint-Michel se trouve en Bretagne',
          isCorrect: false),
      Question(
          questionText: 'La Seine est le fleuve le plus long de France',
          isCorrect: false),
      Question(
          questionText: ' La France métropolitaine est entourée de trois mers',
          isCorrect: true),
      Question(
          questionText:
              'Situé dans les Alpes, le mont Blanc est le plus haut sommet d’Europe.',
          isCorrect: true),
    ];
    return _questions;
  }
}
