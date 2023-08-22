import 'package:application/screens/home/tabs/ask/widgets/history.dart';
import 'package:application/screens/main.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const H10(content: "History"),
            GestureDetector(child: Overline(content: "See all"), onTap: (){
              Navigator.of(context).pushNamed(RouteNames.histories);
            },),
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
