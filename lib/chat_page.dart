import 'package:first_app/widgets/chat_bubble.dart';
import 'package:first_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Hi Mach!'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Icon pressed!");
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatBubble(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  message: "Hi, this is Machksp!",
                );
              },
            ),
          ),
          const ChatInput(),
        ],
      ),
    );
  }
}
