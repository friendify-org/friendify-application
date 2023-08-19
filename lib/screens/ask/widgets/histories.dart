import 'package:application/screens/ask/widgets/history.dart';
import 'package:application/widgets/main.dart';
import 'package:application/widgets/schema/history.dart';
import 'package:flutter/material.dart';

class HistoriesWidget extends StatelessWidget {
  final List<History> histories;

  const HistoriesWidget({super.key, required this.histories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            H10(content: "History"),
            Overline(content: "See all"),
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          child: Column(children: [
            ...histories.map((history) {
              return HistoryWidget(data: history);
            })
          ],),
        )
      ],
    );
  }
}
