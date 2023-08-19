import 'package:application/screens/home/tabs/main.dart';
import 'package:application/widgets/container.dart';
import 'package:application/screens/home/widgets/navbar.dart';
import 'package:application/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navbarController = NavbarController();
    return AppContainer(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppHeader(),
                Expanded(
                  child: generateTab(navbarController.currentRoute),
                ),
              ],
            ),
            Positioned(
              child: SizedBox(
                width: 350,
                child: Navbar(controller: navbarController),
              ),
              bottom: 50,
            ),
          ],
        ),
      ),
    ));
  }
}
