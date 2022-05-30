import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive-screens/layout.dart';
import 'package:whatsapp_clone/screens/mobile_layout.dart';
import 'package:whatsapp_clone/screens/web_layout.dart';
import 'package:whatsapp_clone/themes/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
   

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp-Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      home: const ResponsiveLayout(mobileLayout: MobileLayout(), webLayout: WebLayout()),
    );
  }
}
