// ignore_for_file: unnecessary_const

import 'dart:math';

import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../themes/colors.dart';

class WebChatTopBar extends StatefulWidget {
  String username = "";
  String profileImageLink = "";
  WebChatTopBar(this.username, this.profileImageLink, {Key? key}) : super(key: key);

  @override
  State<WebChatTopBar> createState() => _WebChatTopBarState();
}

class _WebChatTopBarState extends State<WebChatTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: max<double>((MediaQuery.of(context).size.height * 0.05), 50.0),
        width: max<double>((MediaQuery.of(context).size.width * 0.35), (MediaQuery.of(context).size.width) - 40),
        padding: const EdgeInsets.all(5),
        color: Theme.of(context).colorScheme.onTertiary,
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.profileImageLink),
                  radius: 30
                  ),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Text(widget.username, style: const TextStyle(fontSize: 18))
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Theme.of(context).brightness == Brightness.light ? darkBlue500 : grey300,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Theme.of(context).brightness == Brightness.light ? darkBlue500 : grey300))
              ]
            ),
          ]
        )
    );
  }
}