import 'dart:async';

import 'package:application/schema/history.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/svg.dart';
import 'package:application/widgets/translation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryWidget extends StatefulWidget {
  final History data;

  const HistoryWidget({super.key, required this.data});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  Offset dragStart = const Offset(0, 0);
  double dragChanges = 0;
  double trashOffset = 0;
  double historyOffset = 0;
  Timer? _timer;

  _updateTrashOffset(double delta) {
    trashOffset -= delta;
    if (trashOffset > 60) trashOffset = 60;
    if (trashOffset < 0) trashOffset = 0;
  }

  _updateHistoryOffset(double delta) {
    historyOffset += delta;
    if (historyOffset < -60) historyOffset = -60;
    if (historyOffset > 0) historyOffset = 0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (e) {
        dragStart = e.localPosition;
        dragChanges = 0;
      },
      onHorizontalDragUpdate: (e) {
        setState(() {
          dragChanges += (e.localPosition.dx - dragStart.dx) / 20;
          dragStart = e.localPosition;
          _updateTrashOffset(dragChanges);
          _updateHistoryOffset(dragChanges);
        });
      },
      onHorizontalDragEnd: (e) {
        setState(() {
          if (trashOffset > 60 / 2) {
            trashOffset = 60;
          } else {
            trashOffset = 0;
          }
          if (historyOffset < -60 / 2) {
            historyOffset = -60;
          } else {
            historyOffset = 0;
          }
        });
      },
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE5E5E5), width: 0.5),
            top: BorderSide(color: Color(0xFFE5E5E5), width: 0.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TranslationAnimated(
              offset: Offset(historyOffset, 0),
              curve: Curves.linear,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
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
              ),
            ),
            TranslationAnimated(
              offset: Offset(60 - trashOffset, 0),
              curve: Curves.linear,
              child: Container(
                height: 60,
                width: 60,
                color: AppTheme.theme.alert,
                child: const SvgWidget(
                  asset: "assets/images/trash.svg",
                  color: Colors.white,
                  width: 50,
                  height: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
