import 'package:first_tp/bloc/bloc.dart';

import '../data/question.dart';

class QuestionsListBloc implements Bloc {
  List<String> questionsList = [];

  QuestionsListBloc() {
    questionsList = Question.getQuestionsExample();
  }

  @override
  void dispose() {}
}
