import 'package:flutter/material.dart';
import 'package:safe_car_system/constant/chat_layout.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: BackButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/home_screen',
                (route) => false,
              );
            });
          },
        ),
      ),
      body: Center(
        child: ChatLayout(),
      ),
    );
  }
}
