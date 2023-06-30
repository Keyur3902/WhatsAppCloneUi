import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone_flutter/controllers/searchController.dart';
import '../info.dart';
import 'package:whatsappclone_flutter/colors.dart';
import 'mobile_screen_chat_view.dart';

class List_View extends StatelessWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = Provider.of<SearchingController>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10,),
        child: !searchController.isSearch ? ListView.builder(
          shrinkWrap: true ,
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
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18,),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(info[index]['message'].toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                        radius: 30,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(color: dividerColor, indent: 85,),
              ],
            );
          },
        ) : ListView.builder(
          shrinkWrap: true ,
          itemCount: searchController.searchedProduct.length,
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
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      // title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18,),),
                      title: Text(searchController.searchedProduct[index]['name'],style: TextStyle(fontSize: 18,),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(searchController.searchedProduct[index]['message'].toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(searchController.searchedProduct[index]['profilePic'].toString()),
                        radius: 30,
                      ),
                      trailing: Text(
                        searchController.searchedProduct[index]['time'].toString(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(color: dividerColor, indent: 85,),
              ],
            );
          },
        ),
      ),
    );
  }
}
