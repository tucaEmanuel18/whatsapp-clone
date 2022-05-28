import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/sender_message.dart';

import '../data/data.dart';
import 'my_message.dart';

class ChatList extends StatelessWidget {
  const ChatList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index){
        if(messages[index]['my_message'] == true){
          return MyMessage(
            content: messages[index]['content'].toString(), 
            date: messages[index]['time'].toString()
            );
        } else{
          return SenderMessage(
            content: messages[index]['content'].toString(), 
            date: messages[index]['time'].toString()
            );
        }
      }
    );
  }
}