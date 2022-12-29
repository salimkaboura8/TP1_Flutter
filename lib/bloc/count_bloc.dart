import 'package:flutter_bloc/flutter_bloc.dart';

class CountBloc extends Bloc<int, int> {
  CountBloc(int initialState) : super(initialState);

  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield state + event;
  }
}
