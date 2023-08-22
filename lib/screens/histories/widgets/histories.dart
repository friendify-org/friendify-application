import 'package:application/screens/histories/widgets/history.dart';
import 'package:application/screens/home/tabs/ask/main.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

class Histories extends StatelessWidget {
  const Histories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...histories.map((history) {
            return HistoryWidget(data: history);
          })
        ]),),
    );
  }
}