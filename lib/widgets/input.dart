import 'package:application/theme/main.dart';
import 'package:application/utils/validator.dart';
import 'package:application/widgets/body.dart';
import 'package:flutter/material.dart';

class InputController extends TextEditingController {
  final Validtors validators;
  String errorText = "";

  InputController({super.text, this.validators = const []});

  bool validate() {
    validators.asMap().forEach((key, validator) {
      final result = validator(text);
      if (result != "" && errorText == "") {
        errorText = result;
        notifyListeners();
      }
    });

    return errorText.isEmpty;
  }

  void clearError() {
    errorText = "";
    notifyListeners();
  }

  @override
  void addListener(VoidCallback listener) {
    // TODO: implement addListener
    if (!hasListeners) {
      super.addListener(listener);
    }
  }
}

class AppInput extends StatefulWidget {
  final Widget label;
  final HintText hintText;
  final InputController controller;
  final String field;
  final TextStyle? errorStyle;

  const AppInput({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.field,
    this.errorStyle,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  void initState() {
    super.initState();
  }

  void _addListener() {
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _addListener();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: widget.label,
        ),
        TextField(
          controller: widget.controller,
          key: Key(widget.field),
          onTap: () {
            widget.controller.clearError();
          },
          decoration: InputDecoration(
            hintText: widget.hintText.child.content,
            hintStyle: HintText.style,
            filled: true,
            fillColor: AppTheme.theme.inputTheme.backgroundColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.all(18),
          ),
          style: BodySmall.textStyle.copyWith(
            color: AppTheme.theme.inputTheme.primaryTextColor,
          ),
        ),
        widget.controller.errorText.isNotEmpty
            ? Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  widget.controller.errorText,
                  style: (widget.errorStyle ?? BodySmall.textStyle).copyWith(
                    color: AppTheme.theme.inputTheme.errorTextColor,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
