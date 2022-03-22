import 'package:flutter/material.dart';
import 'package:tictactoe_test/widgets/scoreDialog.dart';

class HelperMethods {
  static List<String> gameState = [];
  static String? winnerIndex;
  static initialize() {
    gameState = [
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
    ];
  }

  static resetGame() {
    gameState = [
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
      "empty",
    ];
  }

  static checkResult(context, index) {
    if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      winnerIndex = gameState[0];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));
      resetGame();
    } else if ((gameState[3] != 'empty') &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      winnerIndex = gameState[3];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      winnerIndex = gameState[6];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      winnerIndex = gameState[0];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if ((gameState[1] != 'empty') &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      winnerIndex = gameState[1];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      winnerIndex = gameState[2];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      winnerIndex = gameState[0];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      winnerIndex = gameState[2];

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => WinnerDialog(winner: winnerIndex));

      resetGame();
    } else if (!gameState.contains('empty')) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) => DrawDialog());
      resetGame();
    }
  }

  static getImage(String value) {
    switch (value) {
      case ('empty'):
        return SizedBox();
        break;
      case ('X'):
        return Icon(Icons.clear, color: Colors.red, size: 50);
        break;
      case ('O'):
        return Icon(Icons.circle_outlined, color: Colors.green, size: 50);
        break;
    }
  }
}
