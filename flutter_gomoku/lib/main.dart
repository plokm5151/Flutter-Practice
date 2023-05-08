import 'package:flutter/material.dart';
import 'package:flutter_gomoku/game_view.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){    // build is a function，It'll returns a Widget type variable
    return MaterialApp(
        title: 'Chess Game',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GameView(),
    );
  }
}