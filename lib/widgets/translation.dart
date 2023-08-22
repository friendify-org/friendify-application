import 'dart:math';

import 'package:flutter/material.dart';

class TranslationController extends ChangeNotifier {
  Offset offset;
  AnimationController animationController;
  Curve curve;
  late Animation<Offset> transformAnimation =
      Tween<Offset>(begin: offset, end: offset)
          .animate(CurvedAnimation(parent: animationController, curve: curve));

  TranslationController(
      {required this.offset,
      required this.animationController,
      required this.curve});

  set update(Offset offset) {
    transformAnimation = Tween<Offset>(begin: this.offset, end: offset).animate(
      CurvedAnimation(parent: animationController, curve: curve),
    );
    this.offset = offset;
    notifyListeners();
  }
}

class TranslationAnimated extends StatefulWidget {
  final Offset offset;
  final Widget child;
  final Duration duration; // Default is 500 ms
  final Curve curve;
  const TranslationAnimated({
    super.key,
    required this.offset,
    required this.child,
    this.curve = Curves.easeInOutBack,
    this.duration = const Duration(
      milliseconds: 100,
    ),
  });

  @override
  State<TranslationAnimated> createState() => _TranslationAnimatedState();
}

class _TranslationAnimatedState extends State<TranslationAnimated>
    with TickerProviderStateMixin {
  late final TranslationController _controller = TranslationController(
    offset: widget.offset,
    animationController:
        AnimationController(vsync: this, duration: widget.duration),
    curve: widget.curve,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _controller.transformAnimation.addListener(() {
        setState(() {});
      });
      _controller.animationController.forward(from: 0);
    });
  }

  @override
  void didUpdateWidget(TranslationAnimated oldWidget) {
    _controller.update = widget.offset;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: _controller.transformAnimation.value, child: widget.child);
  }
}
