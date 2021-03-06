import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';
import '../providers/messages_provider.dart';
import '../widgets/chat_list.dart';
import '../widgets/specific_mobile_widgets/message_input.dart';

class MobileChatLayout extends StatelessWidget {
  int contactId = 0;
  MobileChatLayout(this.contactId, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage(data[contactId]['profile_image'].toString())),
              const SizedBox(width: 5),
              Text(data[contactId]['username'].toString()),
            ],
          ),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body: ChangeNotifierProvider(
        create: (context) => MessagesProvider(data[contactId]['messages'] as List<Map<String, Object>>),
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage( (Theme.of(context).brightness == Brightness.light ? "assets/light-background.png" : "assets/dark-background.png")),
              fit: BoxFit.cover)
            ),
            child: Column(
              children: const [
                Expanded(child: ChatList()),
                MessageInput(),
              ]
            ),
          )
        ),
    );
  }
}