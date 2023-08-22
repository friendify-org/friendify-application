import 'package:application/theme/main.dart';
import 'package:application/widgets/main.dart';
import 'package:application/schema/history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class HistoryWidget extends StatelessWidget {
  final History data;

  const HistoryWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: AppTheme.theme.inputTheme.placeHolderColor,
          width: 0.5
        ),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.question,
                style: BodyNormal.style
                    .copyWith(color: AppTheme.theme.primaryTitleColor),
              ),
              SizedBox(height: 5),
              HintText(BodySmall(
                content: data.answer,
              )),
              SizedBox(height: 5),
              HintText(
                BodySmall(content: DateFormat('d MMMM y - H:m').format(data.createdAt)),
              ),
            ],
          ),
          SvgPicture.asset("assets/images/chevron-back-circle.svg")
        ],
      ),
    );
  }
}
