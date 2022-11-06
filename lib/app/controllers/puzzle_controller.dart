import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PuzzleController extends GetxController {
  late List<List<String>> list;
  final serchController = TextEditingController();
  int row = 0;
  int col = 0;
  generateList() {
    list = List.generate(row, (_) => List.generate(col, (_) => ''));
  }

  int getItemCount() => row * col;

  saveToList(int index, String value) {
    int mCol = index % col;
    int mRow = index ~/ col;
    list[mRow][mCol] = value;
  }

  String getElemendAt(int index) {
    int mCol = index % col;
    int mRow = index ~/ col;
    return list[mRow][mCol];
  }

  void serch() {}
}
