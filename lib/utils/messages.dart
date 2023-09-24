import 'package:application/schema/main.dart';

final Map<int, String> messageTranslator = {
  0: "Unexpected error, please try again !", // Default unknow message
  // Translate message to user from code
  9: "Wrong username or password, Please try again !",
};

String messageBuilder(ResponseMessage message) {
  return messageTranslator[message.code] ?? messageTranslator[0]!;
}
