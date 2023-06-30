import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.message),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
