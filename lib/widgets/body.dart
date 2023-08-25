import 'package:application/theme/main.dart';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String content;

  const BodyText({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class BodyTheme extends InheritedWidget {
  final Color color;

  const BodyTheme({super.key, required this.color, required super.child});

  static BodyTheme? of(BuildContext context) {
    BodyTheme? result = context.dependOnInheritedWidgetOfExactType<BodyTheme>();
    return result;
  }

  @override
  bool updateShouldNotify(BodyTheme oldWidget) => color != oldWidget.color;
}

class TitleLarge extends StatelessWidget {
  final String content;

  const TitleLarge({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
    );
  }
}

class TitleMedium extends StatelessWidget {
  final String content;
  const TitleMedium({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.w400, fontFamily: 'Inter'),
    );
  }
}

class BodySuperLarge extends StatelessWidget {
  final String content;
  const BodySuperLarge({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
    );
  }
}

class BodyLarge extends StatelessWidget {
  final String content;
  const BodyLarge({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
    );
  }
}

class BodyMedium extends StatelessWidget {
  final String content;
  const BodyMedium({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
    );
  }
}

class BodyNormal extends BodyText {

  final TextStyle? textStyle;

  const BodyNormal({super.key, required super.content, this.textStyle});

  @override
  Widget build(BuildContext context) {
    final bodyTheme = BodyTheme.of(context);

    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        color: bodyTheme?.color ?? AppTheme.theme.primaryTextColor,
      ).merge(textStyle),
    );
  }

  static TextStyle get style {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    );
  }
}

@immutable
class BodySmall extends BodyText {
  final TextStyle? style;
  const BodySmall({super.key, required super.content, this.style});

  @override
  Widget build(BuildContext context) {
    final bodyTheme = BodyTheme.of(context);
    return Text(
      content,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        color: bodyTheme?.color ?? AppTheme.theme.primaryTextColor,
      ).merge(style),
    );
  }

  static TextStyle get textStyle {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    );
  }
}

class Overline extends StatelessWidget {
  final String content;
  final TextStyle? style;
  const Overline({super.key, required this.content, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        color: AppTheme.theme.secondaryTextColor,
      ).merge(style),
    );
  }
}

class HintText extends StatelessWidget {
  final BodyText child;

  const HintText(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return BodyTheme(
      key: key,
      color: AppTheme.theme.inputTheme.placeHolderColor,
      child: child,
    );
  }

  static TextStyle get style {
    return BodySmall.textStyle.copyWith(
      color: AppTheme.theme.inputTheme.placeHolderColor,
    );
  }
}
