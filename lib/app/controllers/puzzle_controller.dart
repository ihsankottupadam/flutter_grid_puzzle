import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grid_puzzle/app/data/models/card_item.dart';

class PuzzleController extends GetxController {
  late List<List<CardItem>> list;
  final serchController = TextEditingController();
  int row = 0;
  int col = 0;
  generateList() {
    list = List.generate(row, (_) => List.generate(col, (_) => CardItem('')));
  }

  int getItemCount() => row * col;

  saveToList(int index, String value) {
    int mCol = index % col;
    int mRow = index ~/ col;
    list[mRow][mCol] = CardItem(value);
  }

  CardItem getElementAt(int index) {
    int mCol = index % col;
    int mRow = index ~/ col;
    return list[mRow][mCol];
  }

  void search() {
    String query = serchController.text;
    if (query.isEmpty) return;
    _clearSelection();
    for (var i = 0; i < col; i++) {
      for (var j = 0; j < row; j++) {
        if (list[i][j].value == query[0]) {
          _searchInSell(i, j, query);
        }
      }
    }
    update();
  }

  List<Dir> dirs = [Dir(0, 1), Dir(1, 0), Dir(1, 1), Dir(-1, 1)];
  void _searchInSell(int currRow, int currCol, String query) {
    for (var d = 0; d < dirs.length; d++) {
      Dir currDir = dirs[d];
      int t;
      for (t = 0; t < query.length; t++) {
        int sRow = currRow + t * currDir.r;
        int sCol = currCol + t * currDir.c;
        // for exit if index is beyond the grid
        if ((sRow > row - 1 || sRow < 0) || (sCol > col - 1 || sCol < 0)) break;
        if (list[sRow][sCol].value != query[t]) break;
      }
      if (t == query.length) {
        for (var i = 0; i < query.length; i++) {
          list[currRow + i * currDir.r][currCol + i * currDir.c]
              .setSelected(true);
        }
      }
    }
  }

  _clearSelection() {
    for (var i = 0; i < row; i++) {
      for (var j = 0; j < col; j++) {
        list[i][j].setSelected(false);
      }
    }
  }
}

class Dir {
  final int r;
  final int c;
  Dir(this.r, this.c);
}
