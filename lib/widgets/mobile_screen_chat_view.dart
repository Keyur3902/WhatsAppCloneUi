import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/colors.dart';
import 'package:whatsappclone_flutter/widgets/chat_list.dart';

import '../info.dart';

class MobileScreenChatView extends StatelessWidget {
  const MobileScreenChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList(),),
          TextField(
            decoration: InputDecoration(
              fillColor: mobileChatBoxColor,
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.emoji_emotions,color: Colors.grey,),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.camera_alt_rounded, color: Colors.grey,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.money, color: Colors.grey,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.attach_file, color: Colors.grey,),
                    ),
                  ],
                ),
              ),
              hintText: 'Message',
              hintStyle: TextStyle(fontSize: 18,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
