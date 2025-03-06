import 'board.dart';
import 'game_controller.dart';
import 'game_model.dart';
import 'game_view_class.dart';
import 'player_class.dart';

class Game {
  late Player player1;
  late Player player2;
  late Board board;
  late GameController controller;
  late GameView view;
  late GameModel model;

  Game() {
    player1 = Player('Player 1', 'X');
    player2 = Player('Player 2', 'O');
    board = Board();
    controller = GameController();
    view = GameView();
    model = GameModel();
  }

  void start() {
    view.showWelcomeMessage();
    view.showBoard(board);
    while (true) {
      controller.play(board, player1);
      view.showBoard(board);
      if (model.checkWinner(board, player1)) {
        view.showWinner(player1);
        break;
      }
      if (model.checkDraw(board)) {
        view.showDraw();
        break;
      }
      controller.play(board, player2);
      view.showBoard(board);
      if (model.checkWinner(board, player2)) {
        view.showWinner(player2);
        break;
      }
      if (model.checkDraw(board)) {
        view.showDraw();
        break;
      }
    }
  }
}
