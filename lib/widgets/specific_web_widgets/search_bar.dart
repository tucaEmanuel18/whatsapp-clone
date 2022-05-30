import 'dart:math';

import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max<double>((MediaQuery.of(context).size.height * 0.05), 50.0),
      width: max<double>((MediaQuery.of(context).size.width * 0.35), 40),
      padding: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: grey300, width:0.25), top: BorderSide(color: grey300, width:0.25)),
        color: Theme.of(context).brightness == Brightness.light ? white100: darkBlue800
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(fontSize: 14, color: Theme.of(context).brightness == Brightness.light ? darkBlue500: grey500),
            filled: true,
            fillColor: Theme.of(context).brightness == Brightness.light ? grey100: darkBlue400,
            prefixIcon: Icon(Icons.search, color: Theme.of(context).brightness == Brightness.light ? darkBlue500: grey500),
            hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).brightness == Brightness.light ? darkBlue500: grey500),
            hintText: 'Search or start a new chat',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none)
              ),
            contentPadding: const EdgeInsets.all(10),
          )
        ),
      )
    );
  }
}