import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/widgets/sender_message.dart';

import '../data/data.dart';
import '../entities/message.dart';
import '../providers/messages_provider.dart';
import 'my_message.dart';

class ChatList extends StatefulWidget {
  const ChatList({ Key? key }) : super(key: key);
  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<MessagesProvider>(
      builder: (context, messagesProvider, _) => ListView.builder(
        itemCount: messagesProvider.messageList.length,
        itemBuilder: (context, index){
          if(messagesProvider.messageList[index]['my_message'] == true){
            return MyMessage(
              content: messagesProvider.messageList[index]['content'].toString(), 
              date: messagesProvider.messageList[index]['time'].toString()
              );
          } else{
            return SenderMessage(
              content: messagesProvider.messageList[index]['content'].toString(), 
              date: messagesProvider.messageList[index]['time'].toString()
              );
          }
        }
      ),
    );
  }

  // void addMessage(MessageProvider provider) {
  //     if(provider.stateNewMessageValue.isNotEmpty){
  //       messages.add({
  //               "my_message": true,
  //               "content": Message.send(provider.stateNewMessageValue),
  //               "time": DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
  //               "state": "readed"
  //       });
  //       provider.stateNewMessageValue = "";
  //     }
  // }

  // upadateMessages(){
  //   setState((){messagesList = messages;});
  // }
}