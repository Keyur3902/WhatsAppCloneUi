import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/colors.dart';
import 'package:whatsappclone_flutter/widgets/list.dart';

class AddParticipantView extends StatelessWidget {
  const AddParticipantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New group',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search,color: Colors.grey,)
          ),
        ],
      ),
      body: List_View(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_rounded, color: Colors.white,),
        onPressed: (){},
        backgroundColor: tabColor,
      ),
    );
  }
}

