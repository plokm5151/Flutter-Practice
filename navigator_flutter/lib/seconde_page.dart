import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text('Second Page'),
      backgroundColor: Colors.amber,
    );


    final btn = ElevatedButton(
      child: const Text('回到上一頁'),
      onPressed: () => Navigator.pop(context),
    );

    final widget = Container(
      child: btn,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(30),
    );

    final Page = Scaffold(
      appBar: appBar,
      body: widget,
      backgroundColor: const Color.fromARGB(255, 220, 220, 220),
    );

    return Page;
  }
}