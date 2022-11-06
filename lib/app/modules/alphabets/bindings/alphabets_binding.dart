import 'package:get/get.dart';

import '../controllers/alphabets_controller.dart';

class AlphabetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlphabetsController>(
      () => AlphabetsController(),
    );
  }
}
