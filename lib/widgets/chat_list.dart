import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/widgets/my_message_card.dart';
import 'package:whatsappclone_flutter/widgets/sender_message_card.dart';

import '../info.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index){
        if(messages[index]['isMe'] == true){
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
  