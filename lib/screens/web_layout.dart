import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/specific_web_widgets/chat_top_bar.dart';

import '../themes/colors.dart';
import '../widgets/contacts_list.dart';
import '../widgets/specific_web_widgets/message_input.dart';
import '../widgets/specific_web_widgets/profile_bar.dart';
import '../widgets/specific_web_widgets/search_bar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            width: max<double>((MediaQuery.of(context).size.width * 0.65), 40),
            decoration: const BoxDecoration(
              // color: beige300,
              image: DecorationImage(image: AssetImage("assets/light-background.png"),
              fit: BoxFit.cover)
            ),
            child: Column(
              children:const [
                WebChatTopBar(),
                Expanded(
                  child: ChatList()
                ),
                MessageInput()
              ]
            )
          )
        ],
      )
    );
  }
}