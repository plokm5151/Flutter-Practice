import 'package:flutter/material.dart';
//import 'package:your_app_name/game_view_model.dart';

import 'game_view_model.dart';

class GameView extends StatelessWidget {
  final GameViewModel viewModel = GameViewModel(); // ViewModel的實例

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 棋盤視圖
            buildChessBoard(),
            SizedBox(height: 16),
            // 遊戲結果
            Text(
              viewModel.gameResult,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            // 重新開始按鈕
            //RaisedButton(
              //child: Text('Restart'),
              //onPressed: () {
                //viewModel.restartGame();
              //},
            //),
          ],
        ),
      ),
    );
  }

  Widget buildChessBoard() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.brown,
      child: GridView.count(
        crossAxisCount: 8,
        children: List.generate(64, (index) {
          return Container(
            color: (index % 2 == 0) ? Colors.white : Colors.black,
            child: Center(
              child: Text(
                viewModel.getChessPieceSymbol(index),
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        }),
      ),
    );
  }
}
