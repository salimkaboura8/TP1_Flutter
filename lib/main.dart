import 'package:first_tp/ui/profile_page.dart';
import 'package:first_tp/ui/quizz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/count_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: BlocProvider(
        create: (context) => CountBloc(0),
        child: ProfileHomePage(),
      ),
      routes: {
        '/second': (context) => QuizzPage(title: "Quizz"),
      },
    );
  }
}
