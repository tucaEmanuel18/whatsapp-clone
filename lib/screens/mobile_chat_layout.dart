import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/chat_list.dart';
import '../widgets/specific_mobile_widgets/message_input.dart';

class MobileChatLayout extends StatelessWidget {
  const MobileChatLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(data[0]['profile_image'].toString())),
            const SizedBox(width: 5),
            Text(data[0]['username'].toString()),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/light-background.png"),
          fit: BoxFit.cover)
        ),
        child: Column(
          children: const [
            Expanded(child: ChatList()),
            MessageInput(),
          ]
        ),
      )
    );
  }
}