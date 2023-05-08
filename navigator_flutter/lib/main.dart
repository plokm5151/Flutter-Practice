import 'package:flutter/material.dart';
import 'package:navigator_flutter/seconde_page.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text('切換頁面'),
    );

    final  btn = ElevatedButton(
      child: const Text('切換到下一頁'),
      onPressed: () =>
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => SecondPage())),
    );

    final widget = Container(
      child: btn,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(30),
    );

    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );
    return appHomePage;
  }
}