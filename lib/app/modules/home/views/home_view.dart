import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grid_puzzle/app/widgets/input_field.dart';
import 'package:grid_puzzle/app/widgets/titlebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TitleBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 4),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                inputType: TextInputType.number,
                maxLength: 1,
                hintText: 'Column',
                textInputAction: TextInputAction.next,
                validator: controller.validator,
                onSaved: controller.saveCol,
              ),
              const SizedBox(height: 10),
              InputField(
                inputType: TextInputType.number,
                maxLength: 1,
                hintText: 'Row',
                validator: controller.validator,
                onSaved: controller.saveRow,
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: controller.save, child: const Text('OK')))
            ],
          ),
        ),
      ),
    );
  }
}
