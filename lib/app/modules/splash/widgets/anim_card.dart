import 'dart:async';

import 'package:flutter/material.dart';

class AnimCard extends StatefulWidget {
  const AnimCard({super.key, required this.size});
  final double size;

  @override
  State<AnimCard> createState() => _AnimCardState();
}

class _AnimCardState extends State<AnimCard> {
  Color color = Colors.grey.shade300;
  double elevation = 0;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Material(
        animationDuration: const Duration(seconds: 2),
        borderRadius: BorderRadius.circular(5),
        elevation: elevation,
        color: color,
      ),
    );
  }

  void startTimer() {
    Timer(const Duration(seconds: 1), () {
      setState(() {
        elevation = 3;
        color = Color.fromARGB(255, 139, 255, 199);
      });
    });
  }
}
