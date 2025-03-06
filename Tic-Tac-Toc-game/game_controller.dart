import 'dart:io';

import 'board.dart';
import 'player_class.dart';

class GameController {
  void play(Board board, Player player) {
    while (true) {
      try {
        print('${player.name}\'s turn (${player.symbol})');
        print('Enter row number (1-3):');
        int row = int.parse(stdin.readLineSync() ?? '') - 1;
        print('Enter column number (1-3):');
        int col = int.parse(stdin.readLineSync() ?? '') - 1;
        if (board.cells[row][col].value == ' ') {
          board.cells[row][col].value = player.symbol;
          break;
        } else {
          print('Cell is already occupied. Try again.');
        }
      } catch (e) {
        print('Invalid input. Try again.');
      }
    }
  }
}