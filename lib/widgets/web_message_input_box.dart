import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/colors.dart';

class WebMessageInputBox extends StatelessWidget {
  const WebMessageInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.attach_file, color: Colors.grey,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 15,),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: searchBarColor,
                  hintText: 'Type a message',
                  hintStyle: TextStyle(fontSize: 14,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.only(left: 20,),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic, color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
