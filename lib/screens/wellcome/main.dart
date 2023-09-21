import 'package:application/data/repository/config.dart';
import 'package:application/schema/config.dart';
import 'package:application/screens/main.dart';
import 'package:application/screens/wellcome/dynamic.dart';
import 'package:application/screens/wellcome/indicator.dart';
import 'package:application/theme/color_palette.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/container.dart';
import 'package:application/widgets/heading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  int _index = 0;
  bool isFirstAccess = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigate();
  }

  void _navigate() async {
    Config data = await ConfigRepository.data;

    if (data.firstAccess == false) {
      if (context.mounted) {
        if (data.accessToken != "") {
          Navigator.of(context).pushNamed(RouteNames.home);
        } else {
          Navigator.of(context).pushNamed(RouteNames.auth);
        }
      }
    } else {
      setState(() {
        isFirstAccess = true;
      });

      data.firstAccess = false;
      ConfigRepository.update = data;
      await ConfigRepository.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstAccess) {
      return Scaffold(
        body: AppButtonTheme(
          buttonTheme: AppTheme.theme.primaryButtonTheme,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppTheme.theme.backgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_full.png', width: 300),
                const SizedBox(height: 100),
                CarouselSlider(
                  items: const [
                    Dynamic(
                      content: "Hi there! How's your day going?",
                      asset: 'assets/images/hello.png',
                    ),
                    Dynamic(
                      content: "Ask me anything you want to know",
                      asset: 'assets/images/ask.png',
                    ),
                    Dynamic(
                      content: "Voice chat with Friendify ",
                      asset: 'assets/images/micro.png',
                    ),
                    Dynamic(
                      content: "Solve any problem in any language",
                      asset: 'assets/images/language.png',
                    ),
                    Dynamic(
                      content: "Let Friendify be your personal companion",
                      asset: 'assets/images/chat_face.png',
                    ),
                  ],
                  options: CarouselOptions(
                    height: 300,
                    onPageChanged: (index, _) {
                      setState(() {
                        _index = index;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [0, 1, 2, 3, 4]
                        .map((index) => Indiacator(
                              active: index == _index,
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: AppButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RouteNames.home);
                    },
                    child: const H10(content: "Start Now"),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      // return nothing if don't check
      body: AppContainer(
        child: Container(),
      ),
    );
  }
}
