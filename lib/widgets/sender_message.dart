import 'package:flutter/material.dart';

import '../themes/colors.dart';

class SenderMessage extends StatelessWidget {
  final String content;
  final String date;
  const SenderMessage({ Key? key, required this.content, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Theme.of(context).brightness == Brightness.light ? white100: darkBlue500,
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
                child: Text(date, style: TextStyle(fontSize: 10, color:  Theme.of(context).brightness == Brightness.light ? darkBlue500 : grey500)),
              )
            ]
          )
        )
      )
    );
  }
}