import 'dart:developer';

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

  CardItem getElemendAt(int index) {
    int mCol = index % col;
    int mRow = index ~/ col;
    return list[mRow][mCol];
  }

  void serch() {
    String query = serchController.text;
    if (query.isEmpty) return;
    _clearSelection();
    for (var i = 0; i < col; i++) {
      for (var j = 0; j < row; j++) {
        _searchInSell(i, j, query);
      }
    }
    update();
  }

  void _searchInSell(int sRow, int sCol, String query) {
    for (var i = 0; i < query.length; i++) {
      if (sCol + i > col - 1) return;
      if (list[sRow][sCol + i].value != query[i]) {
        return;
      }
    }
    log('found at row $sRow col $sCol');
    for (var i = 0; i < query.length; i++) {
      list[sRow][sCol + i].setSelected(true);
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
