import 'package:get/get.dart';
import 'package:grid_puzzle/app/controllers/puzzle_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PuzzleController());
  }
}
