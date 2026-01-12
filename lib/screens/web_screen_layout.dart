import 'package:chatter/widgets/contacts_list.dart';
import 'package:chatter/widgets/web/profile_bar.dart';
import 'package:flutter/material.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // LEFT SIDEBAR
          Expanded(
            child: Column(
              children: [
                ProfileBar(),
                // SEARCH
                Expanded(child: ContactsList()),
              ],
            ),
          ),
          // RIGHT CONTENT
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
