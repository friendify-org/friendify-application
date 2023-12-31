import 'package:application/screens/home/tabs/ask/main.dart';
import 'package:application/screens/home/tabs/chat/main.dart';
import 'package:flutter/material.dart';

class TabNames {
  static const String ask = "ask";
  static const String chat = "chat";
  static const String feed = "feed";
  static const String assits = "assits";
}

Widget generateTab(String tabName) {
  switch(tabName) {
    case TabNames.ask:
      return const AskTab();
    case TabNames.chat:
      return const ChatTab();
    default:
      return const AskTab();
  }
}