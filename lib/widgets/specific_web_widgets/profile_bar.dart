import 'dart:math';

import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max<double>((MediaQuery.of(context).size.height * 0.10), 50.0),
      width: max<double>((MediaQuery.of(context).size.width * 0.35), 40),
      decoration: const BoxDecoration(border: Border(right: BorderSide(color: grey500)), color: grey300,),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.circle_outlined, color: darkBlue500)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.comment, color: darkBlue500)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: darkBlue500)),
            ]
          )
        ]
      )
    );
  }
}
