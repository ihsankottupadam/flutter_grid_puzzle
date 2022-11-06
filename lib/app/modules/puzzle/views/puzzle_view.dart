import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/puzzle_controller.dart';
import '../../../widgets/serch_bar.dart';
import '../../../widgets/titlebar.dart';

class PuzzleView extends GetView<PuzzleController> {
  const PuzzleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            const SearchBar(),
            const SizedBox(height: 15),
            Card(
              margin: const EdgeInsets.only(top: 10),
              child: GetBuilder<PuzzleController>(builder: (controller) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: controller.col),
                  itemCount: controller.getItemCount(),
                  itemBuilder: (context, index) {
                    var item = controller.getElemendAt(index);
                    return Card(
                      elevation: item.isSelected ? 5 : 0,
                      clipBehavior: Clip.hardEdge,
                      color: item.isSelected
                          ? Colors.yellow
                          : Colors.grey.shade300,
                      child: Center(
                        child: Text(
                          item.value,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
