import 'package:application/schema/main.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/input.dart';
import 'package:application/widgets/main.dart';
import 'package:flutter/material.dart';

typedef InputControllers = Map<String, InputController>;

class FormController extends ChangeNotifier {
  InputControllers controllers = {};
  String globalError; // This error will show at global of the form;

  FormController({this.globalError = ""});

  void addController(String key, InputController controller) {
    controllers[key] = controller;
    notifyListeners();
  }

  bool validate() {
    globalError = "";
    notifyListeners();
    // INFO: Function validate all field in form
    bool isValidForm = true;
    controllers.forEach((key, value) {
      if (controllers[key]?.validate() == false) {
        isValidForm = false;
      }
    });

    return isValidForm;
  }

  void throwGlobalError(String error) {
    globalError = error;
    notifyListeners();
  }

  Json get json {
    Json result = {};
    controllers.forEach((key, value) {
      result[key] = controllers[key]?.text ?? "";
    });

    return result;
  }
}

class AppForm extends StatefulWidget {
  final FormController formController;
  final List<AppInput> children;

  const AppForm({
    super.key,
    required this.formController,
    required this.children,
  });

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  @override
  void initState() {
    super.initState();
    widget.formController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("change: ${widget.formController.globalError}");
    return Column(
      children: [
        ...widget.children.map((child) {
          widget.formController.addController(child.field, child.controller);
          return child;
        }),
        const SizedBox(height: 10),
        widget.formController.globalError.isNotEmpty
            ? Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  widget.formController.globalError,
                  style: BodySmall.textStyle.copyWith(
                    color: AppTheme.theme.inputTheme.errorTextColor,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
