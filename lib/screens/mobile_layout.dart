import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../widgets/contacts_list.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({ Key? key }) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          title: const Text("WhatsApp", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          centerTitle: false,
          actions:[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          ],
          elevation: Theme.of(context).brightness == Brightness.light ? 2:0,
          bottom: PreferredSize(
            child: TabBar(
              controller: _tabController,
              // isScrollable: true,
              indicatorColor: Theme.of(context).colorScheme.primaryContainer,
              labelColor: Theme.of(context).colorScheme.primaryContainer,
              indicatorWeight: 5,
              unselectedLabelColor: Theme.of(context).colorScheme.primaryVariant,
              // labelPadding:EdgeInsets.symmetric(vertical: 1.0),
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs: const [
                Tab(icon: Icon(Icons.camera_alt),),
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS')
              ],
            ),
            preferredSize: const Size(300, 50),
          ),
        ),
        body:  TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Camera feature is not implemented yet')),
            ContactsList(),
            Center(child: Text('Status is not implemented yet')),
            Center(child: Text('Call feature is not implemented yet')),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Theme.of(context).brightness == Brightness.light ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primaryContainer,
          child: const Icon(Icons.comment, color: white100)
        ),
      ),
      
      );
  }
}