import 'package:flutter/material.dart';

import '../themes/colors.dart';

class MyMessage extends StatelessWidget {
  final String content;
  final String date;
  const MyMessage({ Key? key, required this.content, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Theme.of(context).colorScheme.secondary,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical:5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                child: Text(content, style: const TextStyle(fontSize: 16)),
              ),
              Positioned(
                bottom: 0,
                right: 10,
                child: Row(
                  children: [
                   Text(date, style: const TextStyle(fontSize: 10, color: grey300)),
                   const SizedBox(width: 5),
                   const Icon(Icons.done_all, color: blue500, size: 16)
                  ]
                )
                
              )
            ]
          )
        )
      )
    );
  }
}