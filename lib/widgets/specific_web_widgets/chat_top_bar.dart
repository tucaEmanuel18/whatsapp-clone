// ignore_for_file: unnecessary_const

import 'dart:math';

import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../themes/colors.dart';

class WebChatTopBar extends StatelessWidget {
  const WebChatTopBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: max<double>((MediaQuery.of(context).size.height * 0.10), 50.0),
        width: max<double>((MediaQuery.of(context).size.width * 0.35), (MediaQuery.of(context).size.width) - 40),
        padding: const EdgeInsets.all(10),
        color: grey300,
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(data[0]['profile_image'].toString()),
                  radius: 30
                  ),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Text(data[0]['username'].toString(), style: const TextStyle(fontSize: 18))
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: darkBlue500,)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: darkBlue500))
              ]
            ),
          ]
        )
    );
  }
}