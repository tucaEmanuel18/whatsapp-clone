import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/colors.dart';
import '../data/data.dart';
import '../screens/mobile_chat_layout.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MobileChatLayout()));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.tertiary, width:0.25)),
                      color: Theme.of(context).colorScheme.background,
                    ),
                    child: ListTile(
                      title: Text(data[index]['username'].toString(), style: const TextStyle(fontSize: 18)),
                      subtitle:Text(data[index]['info_message'].toString(), style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.tertiary)),
                      leading: CircleAvatar(backgroundImage: NetworkImage(data[index]['profile_image'].toString(),), radius: 25,),
                      trailing: Text(data[index]['time'].toString(), style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.tertiary))
                    ),
                  ),
                ),
              ],
            );
          },
        );
  }
}