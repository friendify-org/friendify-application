import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  // And root for dialog
  final Widget child;
  final double shadowLevel;
  final void Function()? onRequestClose;
  final void Function()? onChildTap;
  const AppDialog(
      {super.key,
      required this.child,
      this.shadowLevel = 0,
      this.onRequestClose,
      this.onChildTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, shadowLevel),
      body: GestureDetector(
        onTap: () {
          if (onRequestClose != null) {
            onRequestClose!();
          }
        },
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: GestureDetector(
              child: child,
              onTap: () {
                if (onChildTap != null) {
                  onChildTap!();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  show(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return this;
        });
  }
}
