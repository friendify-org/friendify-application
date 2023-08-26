import 'package:application/theme/main.dart';
import 'package:application/widgets/main.dart';
import 'package:flutter/material.dart';

class TabButtonOption {
  final Widget label;
  final String value;

  const TabButtonOption({required this.label, required this.value});

  @override
  String toString() {
    return "value: $value";
  }
}

typedef TabButtonOptions = List<TabButtonOption>;
typedef OnChangeOption = void Function(TabButtonOption);

class TabButton extends StatefulWidget {
  final TabButtonController controller;

  const TabButton({super.key, required this.controller});

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: const EdgeInsets.all(5),
        decoration: ShapeDecoration(
          color: AppTheme.theme.tabButtonTheme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Row(
          children: widget.controller.options.map((option) {
            return Expanded(
              child: AppButtonTheme(
                buttonTheme: option.value == widget.controller.value.value
                    ? AppTheme.theme.primaryButtonTheme
                    : AppTheme.theme.inActiveButtonTheme,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: option.value == widget.controller.value.value
                          ? [
                              const BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(2, 2),
                                spreadRadius: 0,
                              )
                            ]
                          : []),
                  child: AppButton(
                    onPressed: () {
                      setState(() {
                        widget.controller.value = option;
                      });
                    },
                    child: option.label,
                  ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}

class TabButtonController extends ChangeNotifier {
  final TabButtonOptions options;
  late TabButtonOption _value;
  OnChangeOption onChange = (TabButtonOption? value) {};

  TabButtonController(
      {OnChangeOption? onChange,
      TabButtonOption? defaultValue,
      required this.options}) {
    if (onChange != null) {
      this.onChange = onChange;
    }
    if (options.length < 2) {
      throw Exception("TabButton must have >= 2 options");
    }
    if (defaultValue == null) {
      _value = options[0];
    } else {
      _value = defaultValue;
    }
  }

  set value(TabButtonOption value) {
    _value = value;
    onChange(value);
    notifyListeners();
  }

  TabButtonOption get value {
    return _value;
  }

  @override
  void addListener(VoidCallback listener) {
    // TODO: implement addListener
    if (hasListeners == false) {
      super.addListener(listener);
    }
  }
}
