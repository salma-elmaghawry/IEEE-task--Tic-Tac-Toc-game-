import 'board.dart';
import 'player_class.dart';

class GameView {
  void showWelcomeMessage() {
    print('Welcome to Tic-Tac-Toe');
  }

  void showBoard(Board board) {
    for (int i = 0; i < 3; i++) {
      print(
          ' ${board.cells[i][0].value} | ${board.cells[i][1].value} | ${board.cells[i][2].value}');
      if (i < 2) {
        print('-----------');
      }
    }
  }

  void showWinner(Player player) {
    print('${player.name} wins');
  }

  void showDraw() {
    print('It\'s a draw');
  }
}