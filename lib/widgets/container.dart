import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget child;
  final Widget? header;
  const AppContainer({super.key, required this.child, this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppTheme.theme.backgroundColor),
        child: Column(
          children: [
            header ?? Container(),
            Expanded(
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: NeverScrollableScrollPhysics()),
                  child: AppButtonTheme(
                    buttonTheme: AppTheme.theme.primaryButtonTheme,
                    child: SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      child: child,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
