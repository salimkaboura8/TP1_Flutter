// Le widget de notre page d'accueil
import 'package:flutter/material.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile Home Page"),
          centerTitle: false,
          //...
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 120),
                child: Stack(alignment: Alignment.center, children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: SizedBox(
                      height: 180,
                      width: 280,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.pinkAccent,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Salim Kaboura',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'salim@email.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'twitter: bogoss34',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(80),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  label: Text('Exercice 2'),
                  icon: Icon(Icons.arrow_forward_outlined),
                  backgroundColor: Colors.blueAccent,
                ),
              )
            ]),
          ),
        ));
  }
}
