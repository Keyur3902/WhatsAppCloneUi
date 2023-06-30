import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/colors.dart';
import 'package:whatsappclone_flutter/widgets/list.dart';
import '../info.dart';
import 'mobile_screen_chat_view.dart';
import 'add_participant_view.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: List_View(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => CommentButtonClick()),
          );
        },
        backgroundColor: tabColor,
        child: Icon(
          Icons.comment,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CommentButtonClick extends StatelessWidget {
  const CommentButtonClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          'Select Contact',
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.group,
                color: tabColor,
              ),
              title: Text('New group'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddParticipantView()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_add,
              color: tabColor,
            ),
            title: Text('New contact'),
            trailing: Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: ListView.builder(
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MobileScreenChatView()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: ListTile(
                            title: Text(info[index]['name'].toString()),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  info[index]['profilePic'].toString()),
                              radius: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
