import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grid_puzzle/app/controllers/puzzle_controller.dart';
import 'package:grid_puzzle/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final PuzzleController puzzleController = Get.find();
  final formKey = GlobalKey<FormState>();

  void saveCol(String? val) {
    int col = int.parse(val!);
    puzzleController.col = col;
  }

  void saveRow(String? val) {
    int row = int.parse(val!);
    puzzleController.row = row;
  }

  String? validator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter value';
    }
    int dig = int.parse(val);
    if (dig < 0 && dig > 7) {
      return 'must be between 0 - 7';
    }
    return null;
  }

  save() {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();
    Get.toNamed(Routes.ALPHABETS);
  }
}
