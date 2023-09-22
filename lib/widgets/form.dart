import 'package:application/schema/main.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

typedef InputControllers = Map<String, InputController>;

class FormController extends ChangeNotifier {
  InputControllers controllers = {};

  FormController();

  void addController(String key, InputController controller) {
    controllers[key] = controller;
    notifyListeners();
  }

  bool validate() {
    // INFO: Function validate all field in form
    bool isValidForm = true;
    controllers.forEach((key, value) {
      if (controllers[key]?.validate() == false) {
        isValidForm = false;
      }
    });

    return isValidForm;
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.children.map((child) {
        widget.formController.addController(child.field, child.controller);
        return child;
      }).toList(),
    );
  }
}
