import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grid_puzzle/app/widgets/titlebar.dart';

import '../controllers/alphabets_controller.dart';

class AlphabetsView extends GetView<AlphabetsController> {
  const AlphabetsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TitleBar(),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            const SizedBox(height: 15),
            const Text(
              'Enter Alphabets',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Form(
              key: controller.formKey,
              child: Card(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: controller.pController.col),
                  itemCount: controller.getItemCount(),
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.hardEdge,
                      color: Colors.grey.shade300,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          textInputAction: TextInputAction.next,
                          maxLength: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            controller.pController.saveToList(index, value!);
                          },
                          decoration: const InputDecoration(counterText: ''),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: controller.save, child: const Text('OK')),
            )
          ],
        ));
  }
}
