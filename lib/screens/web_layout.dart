import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/specific_web_widgets/chat_top_bar.dart';

import '../data/data.dart';
import '../entities/message.dart';
import '../providers/messages_provider.dart';
import '../providers/selected_contact_provider.dart';
import '../themes/colors.dart';
import '../widgets/contacts_list.dart';
import '../widgets/specific_web_widgets/message_input.dart';
import '../widgets/specific_web_widgets/profile_bar.dart';
import '../widgets/specific_web_widgets/search_bar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => SelectedContactProvider(),
      child: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                  ProfileBar(),
                  SearchBar(),
                  ContactsList(),
                  ],
                ),
              ),
            ),
            Consumer<SelectedContactProvider>(
              builder: (context, selectedContactProvider, _) => Container(
                width: max<double>((MediaQuery.of(context).size.width * 0.65), 40),
                decoration: BoxDecoration(
                  // color: beige300,
                  image: DecorationImage(image: AssetImage( (Theme.of(context).brightness == Brightness.light ? "assets/light-background.png" : "assets/dark-background.png")),
                  fit: BoxFit.cover)
                ),
                child: ChangeNotifierProvider(
                  create: (context) => MessagesProvider(data[selectedContactProvider.stateSelectedContact]['messages'] as List<Map<String, Object>>),
                  child: Column(
                    children:[
                      WebChatTopBar(data[selectedContactProvider.stateSelectedContact]['username'].toString(), data[selectedContactProvider.stateSelectedContact]['profile_image'].toString(),),
                      const Expanded(
                        child: ChatList()
                      ),
                      const MessageInput()
                    ]
                  ),
                )
              ),
            ),
          ],
        )
      ),
    );
  }
}