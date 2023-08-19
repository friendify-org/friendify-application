import 'package:application/theme/color_palette.dart';
import 'package:flutter/material.dart';

class Indiacator extends StatelessWidget {
  final bool active;
  const Indiacator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Container(
        width: 20,
        height: 10,
        decoration: BoxDecoration(
          color: ColorPalette.lights[1],
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: ColorPalette.darks[1],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
