import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webLayout;
  final Widget mobileLayout;

  const ResponsiveLayout({ Key? key, required this.webLayout, required this.mobileLayout }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 900){
          return webLayout;
        }else{
          return mobileLayout;
        }
      },
    );
  }
}