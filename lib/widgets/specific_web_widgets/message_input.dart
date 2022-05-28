import 'dart:math';

import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max<double>((MediaQuery.of(context).size.height * 0.05), 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 10,),
      color: grey300,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.emoji_emotions_outlined), color: darkBlue500),
          IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file_outlined), color: darkBlue500),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:10, right: 15, top: 5, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: const TextStyle(fontSize: 14, color: darkBlue500),
                  filled: true,
                  fillColor: white100,
                  hintStyle: const TextStyle(fontSize: 14, color: darkBlue500),
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                    ),
                contentPadding: const EdgeInsets.only(left: 10),)
              ),
            )
          ,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.mic), color: darkBlue500)
        ]
      )
    );
  }
}