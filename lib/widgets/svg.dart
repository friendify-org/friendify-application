import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  final String asset;
  final Color color;
  final double height;
  final double width;
  const SvgWidget({
    super.key,
    required this.asset,
    required this.color,
    this.width = 30,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      width: width,
      height: height,
    );
  }
}
