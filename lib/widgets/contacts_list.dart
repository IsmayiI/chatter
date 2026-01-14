import 'package:chatter/info.dart';
import 'package:chatter/screens/mobile_chat_screen.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 10),
      itemCount: infoList.length,
      itemBuilder: (context, index) {
        final info = infoList[index];
        return InkWell(
          onTap: () {
            if (MediaQuery.of(context).size.width <= 900) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MobileChatScreen()),
              );
            }
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(info.profilePic),
              radius: 30,
            ),
            title: Text(info.name, style: const TextStyle(fontSize: 18)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(info.message, style: const TextStyle(fontSize: 15)),
            ),
            trailing: Text(
              info.time,
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8);
      },
    );
  }
}
