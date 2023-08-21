import 'package:application/schema/history.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryWidget extends StatefulWidget {
  final History data;

  const HistoryWidget({super.key, required this.data});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  Offset drag = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (e) {
        setState(() {
          drag = e.localPosition;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xFFE5E5E5), width: 0.5))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyNormal(
                    content: widget.data.question,
                    textStyle:
                        TextStyle(color: AppTheme.theme.primaryTitleColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Overline(
                    content: DateFormat('d MMMM y - H:m')
                        .format(widget.data.createdAt),
                  ),
                ],
              ),
              Container(
                width: 0,
                child: SvgWidget(
                  asset: "assets/images/trash.svg",
                  color: AppTheme.theme.secondaryTextColor,
                  width: 20,
                  height: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
