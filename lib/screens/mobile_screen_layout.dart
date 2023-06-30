import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone_flutter/widgets/contact_list.dart';
import '../colors.dart';
import '../controllers/searchController.dart';
import '../widgets/call_list.dart';
import '../widgets/status_list.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  TextEditingController search = TextEditingController();
  bool searching = true;

  @override
  Widget build(BuildContext context) {

  final searchController = Provider.of<SearchingController>(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: searchController.searching ? TextField(
            controller: search,
            onChanged: (value) {
              searchController.searchFunc(value);
            },
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
            ),
          ) :  Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: [
            searchController.searching ? IconButton(
              onPressed: (){
              },
              icon: Icon(Icons.clear),
              color: Colors.grey,
            ) : Row(
              children: [
                IconButton(
                  onPressed: (){
                    setState(() {
                      searchController.searching = !searchController.searching;
                    });
                  },
                  icon: Icon(Icons.search),
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_vert),
                  color: Colors.grey,
                ),
              ],
            ),
          ],
          leading: searchController.searching ? IconButton(
            onPressed: (){
              setState(() {
                searchController.searching = !searchController.searching;
              });
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
          ) : null,
          bottom: searchController.searching ? null : TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS', ),
              Tab(text: 'CALLS',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ContactsList(),
            StatusList(),
            CallList(),
          ],
        ),
      ),
    );
  }
}
