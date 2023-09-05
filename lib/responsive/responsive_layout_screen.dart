import 'package:flutter/material.dart';
import 'package:ig_clone/utilities/dim.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget WebScreenLayout;
  final Widget MobileScreenLayout;
  const ResponsiveLayout({
    super.key, 
    required this.WebScreenLayout, 
    required this.MobileScreenLayout });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > webScreenSize) {
          return WebScreenLayout;
        }
        return MobileScreenLayout;
      },
    );
  }
}