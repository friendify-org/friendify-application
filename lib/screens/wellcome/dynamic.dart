import 'package:application/widgets/button.dart';
import 'package:application/widgets/heading.dart';
import 'package:flutter/material.dart';

class Dynamic extends StatelessWidget {
  final String asset;
  final String content;

  const Dynamic({super.key, required this.asset, required this.content});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            asset,
            width: 120,
          ),
          const SizedBox(height: 30),
          H8(content: content),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
