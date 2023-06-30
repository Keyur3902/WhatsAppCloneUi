import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone_flutter/colors.dart';
import 'package:whatsappclone_flutter/screens/web_screen-layout.dart';
import 'package:whatsappclone_flutter/screens/mobile_screen_layout.dart';
import 'package:whatsappclone_flutter/responsive/responsive-layout.dart';

import 'controllers/searchController.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchingController())
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),
    )
    );
  }
}
