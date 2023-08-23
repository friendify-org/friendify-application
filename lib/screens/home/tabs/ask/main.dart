import 'package:application/schema/history.dart';
import 'package:application/screens/home/tabs/ask/widgets/histories.dart';
import 'package:application/screens/home/tabs/ask/widgets/navigate_button.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/header.dart';
import 'package:application/widgets/main.dart';
import 'package:application/screens/home/widgets/navbar.dart';
import 'package:flutter/material.dart';

class AskTab extends StatelessWidget {
  const AskTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "Welcome to Friendify, Alan!",
          style: TextStyle(
              color: AppTheme.theme.primaryTextColor,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              fontFamily: "Montserrat"),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: NavigateButton(
                asset: "assets/images/chat_navigate.svg",
                content: 'Start new chat',
                title: 'AI Chat',
                url: 'ai_chat',
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: NavigateButton(
                asset: "assets/images/image_navigate.svg",
                title: "Ai Generate Image",
                content: "Create new",
                url: "",
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Expanded(
          child: HistoriesWidget(
            histories: histories,
          ),
        ),
      ],
    );
  }
}

final List<History> histories = [
  History(
      id: "0",
      question: "What's the weather like today?",
      answer: "I'm sorry, I don't have access to real-time...",
      createdAt: DateTime.now()),
  History(
      id: "1",
      question: "What's the meaning of life?",
      answer: "That's a philosophical question that has been..",
      createdAt: DateTime.now()),
  History(
      id: "2",
      question: "What's the best ",
      answer: "The best way to learn a new language depends..",
      createdAt: DateTime.now()),
  History(
      id: "0",
      question: "What's the weather like today?",
      answer: "I'm sorry, I don't have access to real-time...",
      createdAt: DateTime.now()),
  History(
      id: "1",
      question: "What's the meaning of life?",
      answer: "That's a philosophical question that has been..",
      createdAt: DateTime.now()),
  History(
      id: "2",
      question: "What's the best way",
      answer: "The best way to learn a new language depends..",
      createdAt: DateTime.now()),
  History(
      id: "0",
      question: "What's the weather like today?",
      answer: "I'm sorry, I don't have access to real-time...",
      createdAt: DateTime.now()),
  History(
      id: "1",
      question: "What's the meaning of life?",
      answer: "That's a philosophical question that has been..",
      createdAt: DateTime.now()),
  History(
      id: "2",
      question: "What's the best wa",
      answer: "The best way to learn a new language depends..",
      createdAt: DateTime.now()),
  History(
      id: "0",
      question: "What's the weather like today?",
      answer: "I'm sorry, I don't have access to real-time...",
      createdAt: DateTime.now()),
  History(
      id: "1",
      question: "What's the meaning of life?",
      answer: "That's a philosophical question that has been..",
      createdAt: DateTime.now()),
  History(
      id: "2",
      question: "What's the best ",
      answer: "The best way to learn a new language depends..",
      createdAt: DateTime.now()),
  History(
      id: "0",
      question: "What's the weather like today?",
      answer: "I'm sorry, I don't have access to real-time...",
      createdAt: DateTime.now()),
  History(
      id: "1",
      question: "What's the meaning of life?",
      answer: "That's a philosophical question that has been..",
      createdAt: DateTime.now()),
  History(
      id: "2",
      question: "What's the best",
      answer: "The best way to learn a new language depends..",
      createdAt: DateTime.now()),
];
