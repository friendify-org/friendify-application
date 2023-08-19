import 'package:application/screens/home/tabs/ask/widgets/history.dart';
import 'package:application/widgets/main.dart';
import 'package:application/schema/history.dart';
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
        SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              ...histories.map((history) {
                return HistoryWidget(data: history);
              }),
              Container(height: 200),
            ]),
          ),
        ),
      ],
    );
  }
}
