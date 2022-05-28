import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../widgets/contacts_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions:[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          ],
          bottom: const PreferredSize(
            child: TabBar(
            // isScrollable: true,
            indicatorColor: white100,
            indicatorWeight: 5,
            unselectedLabelColor: tealGreen300,
            // labelPadding:EdgeInsets.symmetric(vertical: 1.0),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS')
            ],
          ),
            preferredSize: Size(300, 50),
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tealGreen500,
          child: const Icon(Icons.comment, color: white100)
        ),
      ),
      
      );
  }
}