import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget getChatBubble(alignment, message) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$message",
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Image.network(
              'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
              height: 200,
            ),
          ],
        ),
      ),
    );
  }

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
            child: ListView(
              children: [
                getChatBubble(Alignment.centerLeft, "Hi, this is Machksp!"),
                getChatBubble(Alignment.centerRight, "Hi!"),
              ],
            ),
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
