import 'package:flutter/material.dart';

import '../colors.dart';
import '../info.dart';
import 'mobile_screen_chat_view.dart';
import 'add_participant_view.dart';

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.0,),
                    child: ListTile(
                      title: Text(info[index]['name'].toString(), style: TextStyle(fontSize: 18,),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(info[index]['time'].toString(),style: TextStyle(fontSize: 15, color: Colors.grey),),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]['profilePic'].toString(),),
                        radius: 30,
                      ),
                      trailing: Icon(Icons.call),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => AddCallButtonClick()),
          );
        },
        backgroundColor: tabColor,
        child: Icon(Icons.comment,color: Colors.white,),
      ),
    );
  }
}


class AddCallButtonClick extends StatelessWidget {
  const AddCallButtonClick({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Select Contact', style: TextStyle(color: Colors.grey, fontSize: 20),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey,),),
        ],
      ),
      body: Column(
        children: [
          ListTile(
              leading: Icon(Icons.group, color: tabColor,),
              title: Text('New group'),
          ),
          ListTile(
            leading: Icon(Icons.person_add, color: tabColor,),
            title: Text('New contact'),
            trailing: Icon(Icons.qr_code_scanner_outlined, color: Colors.grey,),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10,),
              child: ListView.builder(
                itemCount: info.length,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context)=>MobileScreenChatView()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: ListTile(
                            title: Text(info[index]['name'].toString()),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
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
