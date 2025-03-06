import 'board.dart';
import 'player_class.dart';

class GameModel {
  bool checkWinner(Board board, Player player) {
    for (int i = 0; i < 3; i++) {
      if (board.cells[i][0].value == player.symbol &&
          board.cells[i][1].value == player.symbol &&
          board.cells[i][2].value == player.symbol) {
        return true;
      }
      if (board.cells[0][i].value == player.symbol &&
          board.cells[1][i].value == player.symbol &&
          board.cells[2][i].value == player.symbol) {
        return true;
      }
    }
    if (board.cells[0][0].value == player.symbol &&
        board.cells[1][1].value == player.symbol &&
        board.cells[2][2].value == player.symbol) {
      return true;
    }
    if (board.cells[0][2].value == player.symbol &&
        board.cells[1][1].value == player.symbol &&
        board.cells[2][0].value == player.symbol) {
      return true;
    }
    return false;
  }

  bool checkDraw(Board board) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board.cells[i][j].value == ' ') {
          return false;
        }
      }
    }
    return true;
  }
}