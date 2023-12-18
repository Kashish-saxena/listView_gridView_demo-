import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(50)),
          child: Container(
            padding: const EdgeInsets.all(30),
            alignment: Alignment.center,
            height: 100,
            color: Colors.blue,
            child: const Text(
              "ClipRRect",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
