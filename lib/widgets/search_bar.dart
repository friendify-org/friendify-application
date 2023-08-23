import 'package:application/theme/main.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget {
  final bool expanded;
  final Duration duration; // Default is 1 seconds;

  const AppSearchBar(
      {super.key,
      this.expanded = false,
      this.duration = const Duration(seconds: 1)});

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: widget.duration,
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutQuart,
  );

  bool _expanded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expanded = widget.expanded;
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _expanded = !_expanded;
          // _controller.forward(from: _expanded ? 1.0 : 0.0);
          if (!_expanded) {
            _controller.reverse(from: 1);
          } else {
            _controller.forward(from: 0);
          }
        });
      },
      child: AnimatedSize(
        curve: Curves.bounceIn,
        duration: widget.duration,
        child: _layoutBuilder(),
      ),
    );
  }

  Widget _layoutBuilder() {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      return _collapsedChildBuilder(context);
    });
  }

  Widget _expandedChildBuilder(BuildContext context) {
    return Container(height: 20, color: Colors.red);
  }

  Widget _collapsedChildBuilder(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SvgWidget(
          asset: "assets/images/search.svg",
          color: AppTheme.theme.primaryTextColor),
    );
  }
}
