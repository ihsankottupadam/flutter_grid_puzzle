import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grid_puzzle/app/modules/splash/widgets/card_gride.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);
  final SplashController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            CardGride(),
            SizedBox(height: 20),
            Text(
              'Grid Puzzle',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}
