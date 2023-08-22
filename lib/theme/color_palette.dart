import 'package:flutter/material.dart';

class ColorPalette {
  static const primaryWhite = Color(0xFFFFFFFF);
  static const linearButton = LinearGradient(
    begin: Alignment(1.00, -0.00),
    end: Alignment(-1, 0),
    colors: [Color(0xFF6785FF), Color(0xFF6667FF), Color(0xFF8A66FA)],
  );
  static const lights = [
    Color(0xFFFFFFFF),
    Color(0xFF6670FF),
    Color(0xFFF7F7F7),
    Color(0xFFF0F1FF),
    Color(0xFFF7F7F7),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFFF6464),
  ];
  static const darks = [
    Color(0xFF6670FF),
    Color(0xFF272D46),
    Color(0xFF272D46),
    Color(0xFF374167),
    Color(0xFF040718),
    Color(0xFF01042F),
    Color(0xFF151549),
    Color(0xFFFF6464),
  ];
  static const greys = [
    Color(0xFFF7F7F7),
    Color(0xFFE1E1E1),
    Color(0xFFCFCFCF),
    Color(0xFFB1B1B1),
    Color(0xFF9E9E9E),
    Color(0xFF7E7E7E),
    Color(0xFF626262),
    Color(0xFF515151),
    Color(0xFF3B3B3B),
    Color(0xFF222222),
  ];
  static const primary = [
    Color(0xFFF0F1FF),
    Color(0xFFE0E2FF),
    Color(0xFFC2C6FF),
    Color(0xFFA3A9FF),
    Color(0xFF858DFF),
    Color(0xFF6670FF),
    Color(0xFF4D54BF),
    Color(0xFF4D54BF),
    Color(0xFF4D54BF),
    Color(0xFF151549),
    Color(0xFF01042F),
  ];
  static const blackPrimary10 = Color(0xFFF7F7F7);
  static const blackPrimary40 = Color(0xFFB1B1B1);
  static const blackPrimary50 = Color(0xFF9E9E9E);
  static const blackPrimary90 = Color(0xFF3B3B3B);

  static const blackPrimary = Color(0xFF000000);
  static const blackSecondary50 = Color(0xFF8f8f8f);

  static const redAlert = Color(0xFFDC362E);
}
