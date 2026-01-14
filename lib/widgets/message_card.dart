import 'package:chatter/colors.dart';
import 'package:chatter/info.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Message message;

  const MessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final aligment = message.isMe
        ? Alignment.centerRight
        : Alignment.centerLeft;

    final paddingMessage = message.isMe
        ? const EdgeInsets.only(left: 50)
        : const EdgeInsets.only(right: 50);

    return Padding(
      padding: paddingMessage,
      child: Align(
        alignment: aligment,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 90,
                  top: 5,
                  bottom: 12,
                ),
                child: Text(message.text, style: const TextStyle(fontSize: 16)),
              ),

              Positioned(
                bottom: 5,
                right: 5,
                child: Row(
                  children: [
                    Text(
                      message.time,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.done_all, size: 20, color: Colors.white60),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
