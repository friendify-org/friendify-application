import 'package:application/schema/user.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/heading.dart';
import 'package:flutter/material.dart';

class BasicInformation extends StatelessWidget {
  final UserSchema data;

  const BasicInformation({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(data.avatar, width: 100, height: 100),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H10(content: data.fullName),
            SizedBox(
              height: 10,
            ),
            Overline(content: "ID: 123123123"),
            SizedBox(height: 2),
            Overline(content: "My refferal coe: ${data.referralCode}")
          ],
        )
      ],
    );
  }
}
