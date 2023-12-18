import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: 15,
        itemBuilder: ((context, index) {
          return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
              child: const Text("GridView Builder",style: TextStyle(color: Colors.white),));
        }),
      ),
    );
  }
}
