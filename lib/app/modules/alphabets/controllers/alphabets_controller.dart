import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grid_puzzle/app/controllers/puzzle_controller.dart';
import 'package:grid_puzzle/app/routes/app_pages.dart';

class AlphabetsController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    pController.generateList();
  }

  final pController = Get.find<PuzzleController>();
  final formKey = GlobalKey<FormState>();
  int getItemCount() => pController.col * pController.row;
  save() {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();
    Get.toNamed(Routes.PUZZLE);
  }
}
