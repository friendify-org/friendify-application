import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  final String asset;
  final Color? color;
  final double height;
  final double width;
  const SvgWidget({
    super.key,
    required this.asset,
    this.color,
    this.width = 30,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      width: width,
      height: height,
      fit: BoxFit.scaleDown,
    );
  }
}
