import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/colors.dart';
import 'package:whatsappclone_flutter/widgets/chat_list.dart';
import 'package:whatsappclone_flutter/widgets/contact_list.dart';
import 'package:whatsappclone_flutter/widgets/web_chat_appbar.dart';
import 'package:whatsappclone_flutter/widgets/web_message_input_box.dart';
import 'package:whatsappclone_flutter/widgets/web_profile_bar.dart';
import 'package:whatsappclone_flutter/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          //Web Screen
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList()),
                WebMessageInputBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
