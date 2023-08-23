import 'package:application/widgets/main.dart';
import 'package:application/widgets/secondary_header.dart';
import 'package:flutter/material.dart';

class AiChat extends StatelessWidget {
  const AiChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppContainer(
      child: Column(
        children: [
          SecondaryHeader(
            child: H8(content: "AI Chat"),
          ),
        ],
      ),
    );
  }
}
