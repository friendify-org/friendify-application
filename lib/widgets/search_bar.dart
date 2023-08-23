import 'package:application/theme/main.dart';
import 'package:application/widgets/input.dart';
import 'package:application/widgets/main.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget {
  final Duration duration; // Default is 1 seconds;
  final double collapsedSize;
  final double expanedSize;
  final Curve curve;

  const AppSearchBar({
    super.key,
    this.duration = const Duration(milliseconds: 800),
    this.collapsedSize = 30,
    this.expanedSize = double.infinity,
    this.curve = Curves.ease,
  });

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  late double _width = widget.collapsedSize;
  late Color _backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_width == widget.collapsedSize) {
            _width = widget.expanedSize;
            _backgroundColor = AppTheme.theme.inputTheme.backgroundColor;
          } else {
            _width = widget.collapsedSize;
            _backgroundColor = Colors.transparent;
          }
        });
      },
      child: AnimatedSize(
        curve: widget.curve,
        duration: widget.duration,
        child: SizedBox(
          width: _width,
          child: AnimatedContainer(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: _backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            duration: widget.duration,
            child: _layoutBuilder(),
          ),
        ),
      ),
    );
  }

  Widget _layoutBuilder() {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth == widget.collapsedSize) {
        return SizedBox(
          child: _collapsedChildBuilder(context),
          width: constraints.maxWidth,
        );
      } else {
        return SizedBox(
          child: _expandedChildBuilder(context),
          width: constraints.maxWidth,
        );
      }
    });
  }

  Widget _expandedChildBuilder(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: "Search...",
              hintStyle: BodySmall.style
                  .copyWith(color: AppTheme.theme.inputTheme.placeHolderColor),
            ),
            style: BodySmall.style
                .copyWith(color: AppTheme.theme.inputTheme.primaryTextColor),
          ),
        ),
        _collapsedChildBuilder(context),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _collapsedChildBuilder(BuildContext context) {
    return Container(
      child: SvgWidget(
        asset: "assets/images/search.svg",
        color: AppTheme.theme.primaryTextColor,
        width: 24,
        height: 24,
      ),
    );
  }
}
