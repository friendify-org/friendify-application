import 'package:application/screens/histories/widgets/histories.dart';
import 'package:application/widgets/main.dart';
import 'package:application/widgets/secondary_header.dart';
import 'package:flutter/material.dart';

class HistoriesScreen extends StatelessWidget {
  const HistoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            SecondaryHeader(
              child: H8(content: "History"),
            ),
            Expanded(child: Histories()),
          ],
        ),
      ),
    );
  }
}
