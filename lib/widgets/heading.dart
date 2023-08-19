import 'package:application/theme/main.dart' as t;
import 'package:flutter/material.dart';

class HeadingTheme extends InheritedWidget {
  final Color color;

  const HeadingTheme({super.key, required this.color, required super.child});

  static HeadingTheme? of(BuildContext context) {
    HeadingTheme? result =
        context.dependOnInheritedWidgetOfExactType<HeadingTheme>();

    return result;
  }

  @override
  bool updateShouldNotify(HeadingTheme oldWidget) => color != oldWidget.color;
}

class H1 extends StatelessWidget {
  final String content;

  const H1({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontFamily: 'Montserrat', fontSize: 96, fontWeight: FontWeight.w700),
    );
  }
}

class H2 extends StatelessWidget {
  final String content;

  const H2({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontFamily: 'Montserrat', fontSize: 80, fontWeight: FontWeight.w700),
    );
  }
}

class H3 extends StatelessWidget {
  final String content;

  const H3({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontFamily: 'Montserrat', fontSize: 80, fontWeight: FontWeight.w700),
    );
  }
}

class H4 extends StatelessWidget {
  final String content;

  const H4({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontFamily: 'Montserrat', fontSize: 80, fontWeight: FontWeight.w700),
    );
  }
}

class H5 extends StatelessWidget {
  final String content;

  const H5({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontFamily: 'Montserrat', fontSize: 80, fontWeight: FontWeight.w700),
    );
  }
}

class H6 extends StatelessWidget {
  final String content;

  const H6({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontFamily: 'Montserrat', fontSize: 80, fontWeight: FontWeight.w700),
    );
  }
}

class H7 extends StatelessWidget {
  final String content;

  const H7({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final textTheme = HeadingTheme.of(context);
    return Text(
      content,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: textTheme?.color ?? t.AppTheme.theme.primaryTextColor,
      ),
    );
  }

  static TextStyle get style {
    return const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }
}

class H8 extends StatelessWidget {
  final String content;
  final TextAlign textAlign;
  final Color color;

  const H8({
    super.key,
    required this.content,
    this.textAlign = TextAlign.center,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: t.AppTheme.theme.primaryTextColor,
      ),
    );
  }
}

class H9 extends StatelessWidget {
  final String content;

  const H9({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 80,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class H10 extends StatelessWidget {
  final String content;

  const H10({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final HeadingTheme? textTheme = HeadingTheme.of(context);

    return Text(
      content,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: textTheme?.color ?? t.AppTheme.theme.primaryTextColor,
      ),
    );
  }
}

class H11 extends StatelessWidget {
  final String content;

  const H11({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final HeadingTheme? textTheme = HeadingTheme.of(context);

    return Text(
      content,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: textTheme?.color ?? t.AppTheme.theme.primaryTextColor,
      ),
    );
  }
}
