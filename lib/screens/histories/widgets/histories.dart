import 'package:application/screens/histories/widgets/history.dart';
import 'package:application/screens/home/tabs/ask/main.dart';
import 'package:application/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class Histories extends StatelessWidget {
  const Histories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              child: const Align(
                alignment: Alignment.topRight,
                child: AppSearchBar(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  ...histories.map((history) {
                    return HistoryWidget(data: history);
                  })
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
