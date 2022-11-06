import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/puzzle_controller.dart';

class SearchBar extends GetWidget<PuzzleController> {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(25),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  controller: controller.serchController,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: controller.search,
              icon: const Icon(Icons.search),
              label: const Text('Serch'),
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0x33536DFE),
                  foregroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
