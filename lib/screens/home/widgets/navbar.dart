import 'package:application/screens/home/tabs/main.dart';
import 'package:application/screens/main.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String href;
  final String label;
  final String assets;
  final NavbarController controller;

  const NavItem({
    super.key,
    required this.href,
    required this.label,
    required this.assets,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final color = controller.currentRoute == href
        ? AppTheme.theme.navbarTheme.activeItemColor
        : AppTheme.theme.navbarTheme.itemColor;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        SvgWidget(asset: assets, color: color),
        Overline(
          content: label,
          style: TextStyle(color: color),
        ),
      ]),
    );
  }
}

class Navbar extends StatefulWidget {
  final NavbarController controller;
  const Navbar({super.key, required this.controller});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    List<NavItem> items = [
      NavItem(
        href: TabNames.ask,
        label: "Ask",
        assets: "assets/navbar/ask.svg",
        controller: widget.controller,
      ),
      NavItem(
        href: TabNames.chat,
        label: "Chat",
        assets: "assets/navbar/chat.svg",
        controller: widget.controller,
      ),
      NavItem(
        href: TabNames.feed,
        label: "Feed",
        assets: "assets/navbar/feed.svg",
        controller: widget.controller,
      ),
      NavItem(
        href: TabNames.assits,
        label: "Assits",
        assets: "assets/navbar/assits.svg",
        controller: widget.controller,
      ),
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppTheme.theme.navbarTheme.backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color(0x19464646),
            blurRadius: 40,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items
            .map((item) => GestureDetector(
                  child: item,
                  onTap: () {
                    widget.controller.changeRoute = item.href;
                  },
                ))
            .toList(),
      ),
    );
  }
}

class NavbarController extends ChangeNotifier {
  String currentRoute;
  NavbarController({this.currentRoute = RouteNames.ask});

  set changeRoute(String routeName) {
    currentRoute = routeName;
    notifyListeners();
  }
}
