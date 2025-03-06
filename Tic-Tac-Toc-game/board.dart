import 'cell_class.dart';
import 'main.dart';

class Board {
  late List<List<Cell>> cells;

  Board() {
    cells = List.generate(3, (i) => List.generate(3, (j) => Cell()));
  }
}