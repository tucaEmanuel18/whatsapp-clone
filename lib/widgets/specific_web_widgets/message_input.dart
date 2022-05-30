import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/messages_provider.dart';
import '../../themes/colors.dart';

class MessageInput extends StatefulWidget {
  const MessageInput({ Key? key }) : super(key: key);
  
  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  String currentValue = "";
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.addListener(_setCurrentValue);
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLight = (Theme.of(context).brightness == Brightness.light);

    return Container(
      height: max<double>((MediaQuery.of(context).size.height * 0.05), 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 10,),
      color: isLight ? grey100 : darkBlue500,
      child: Row(
        children: [
          IconButton(
            onPressed: () {}, icon: const Icon(Icons.emoji_emotions_outlined), 
            color: isLight ? darkBlue500 : grey300
          ),
          IconButton(
            onPressed: () {}, icon: const Icon(Icons.attach_file_outlined),
           color: isLight ? darkBlue500 : grey300,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:10, right: 15, top: 5, bottom: 5),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 14, color: isLight ? darkBlue500 : grey300),
                  filled: true,
                  fillColor: isLight? white100: darkBlue400,
                  hintStyle: TextStyle(fontSize: 14, color: isLight ? darkBlue500 : grey300),
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                    ),
                contentPadding: const EdgeInsets.only(left: 10),),
              ),
            )
          ,),
          IconButton(
            onPressed: (){
              if(textController.text.isNotEmpty){
                Provider.of<MessagesProvider>(context, listen: false).add(textController.text);
                textController.text = "";
              }
            },
            icon: Icon(textController.text.isEmpty ? Icons.mic: Icons.send), 
            color: isLight ? darkBlue500 : grey300
          )
        ]
      )
    );
  }

  void _setCurrentValue() {
    setState((){currentValue = textController.text;});
  }
}