import 'package:flutter/material.dart';

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.custom(
        scrollDirection: Axis.horizontal,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Text("GridView Custom",style: TextStyle(color: Colors.white),));
          },
          childCount: 10,
        ),
      ),
    );
  }
}
