import 'package:chatter/info.dart';
import 'package:chatter/widgets/message_card.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageList.length,
      itemBuilder: (context, index) {
        final message = messageList[index];
        return MessageCard(message: message);
      },
    );
  }
}
