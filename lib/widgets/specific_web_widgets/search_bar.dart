import 'dart:math';

import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max<double>((MediaQuery.of(context).size.height * 0.05), 50.0),
      width: max<double>((MediaQuery.of(context).size.width * 0.33), 50),
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: grey500, width:0.25))),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: const TextStyle(fontSize: 14, color: darkBlue500),
          filled: true,
          fillColor: grey300,
          prefixIcon: const Icon(Icons.search),
          hintStyle: const TextStyle(fontSize: 14, color: darkBlue500),
          hintText: 'Search or start a new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)
            ),
          contentPadding: const EdgeInsets.all(10),
        )
      )
    );
  }
}