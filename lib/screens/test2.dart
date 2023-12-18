import 'package:flutter/material.dart';

class Test2Screen extends StatefulWidget {
  const Test2Screen({super.key});

  @override
  State<Test2Screen> createState() => _Test2ScreenState();
}

class _Test2ScreenState extends State<Test2Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("testing 2"),
    );
  }
}