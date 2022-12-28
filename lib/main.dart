import 'package:first_tp/ui/profile_page.dart';
import 'package:first_tp/ui/quizz_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // point d'entrée

// Le widget racine de notre application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // une application utilisant Material Design
      title: 'My First Flutter App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity
              .adaptivePlatformDensity), // données relatives au thème choisi
      home: const ProfileHomePage(), //
      routes: {
        '/second': (context) => const QuizzPage(title: "Quizz"),
      }, // le widget de la page d'accueil
    );
  }
}
