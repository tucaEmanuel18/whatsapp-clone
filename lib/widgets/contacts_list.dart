import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/responsive-screens/layout.dart';
import 'package:whatsapp_clone/screens/web_layout.dart';
import 'package:whatsapp_clone/themes/colors.dart';
import '../data/data.dart';
import '../providers/messages_provider.dart';
import '../providers/selected_contact_provider.dart';
import '../screens/mobile_chat_layout.dart';
import '../screens/mobile_layout.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedContactProvider>(
      builder: (context, selectedContactProvider, _) => ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              selectedContactProvider.stateSelectedContact = index;
              if(MediaQuery.of(context).size.width < 900){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MobileChatLayout(index)));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.tertiary, width:0.25)),
              ),
              child: ListTile(
                selected: selectedContactProvider.stateSelectedContact == index,
                selectedColor: Theme.of(context).brightness == Brightness.light ? darkBlue500 : grey300,
                tileColor: Theme.of(context).brightness == Brightness.light ? white100 : darkBlue800,
                selectedTileColor: Theme.of(context).brightness == Brightness.light ? grey100 : darkBlue400,
                title: Text(data[index]['username'].toString(), style: const TextStyle(fontSize: 18)),
                subtitle:Text(data[index]['info_message'].toString(), style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.tertiary)),
                leading: CircleAvatar(backgroundImage: NetworkImage(data[index]['profile_image'].toString(),), radius: 25,),
                trailing: Text(data[index]['time'].toString(), style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.tertiary))
              ),
            ),
          );
        },
      ),
    );
  }
}