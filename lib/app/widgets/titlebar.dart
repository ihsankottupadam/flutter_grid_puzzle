import 'package:flutter/material.dart';

class TitleBar extends AppBar {
  TitleBar({
    super.key,
    super.title = const Text(
      'Grid Puzzle',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    super.centerTitle = true,
    super.iconTheme = const IconThemeData(color: Colors.black),
  });
}
