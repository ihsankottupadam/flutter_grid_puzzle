import 'package:flutter/material.dart';
import 'package:grid_puzzle/app/modules/splash/widgets/anim_card.dart';

class CardGride extends StatelessWidget {
  const CardGride({super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 30;
    var container = SizedBox(
      width: size,
      height: size,
      child: Material(
          elevation: 1,
          color: Colors.white54,
          borderRadius: BorderRadius.circular(5)),
    );

    return SizedBox(
      width: 90,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const AnimCard(size: size),
                  const SizedBox(width: 5),
                  container,
                ],
              ),
              const SizedBox.square(dimension: 5),
              Row(
                children: [
                  container,
                  const SizedBox(width: 5),
                  const AnimCard(size: size),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
