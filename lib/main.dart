import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grid_puzzle/app/modules/home/bindings/initial_bindings.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      initialBinding: InitialBindings(),
      getPages: AppPages.routes,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFB4F5D5),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.greenAccent),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
