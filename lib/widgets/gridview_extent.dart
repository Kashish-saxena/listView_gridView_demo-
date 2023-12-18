import 'package:flutter/material.dart';

class GridViewExtentWidget extends StatelessWidget {
  const GridViewExtentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.extent(
        maxCrossAxisExtent: 90,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: List.generate(
          15,
          (index) {
            return Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
                child: const Text("GridView Extent",style: TextStyle(color: Colors.white),));
          },
        ),
      ),
    );
  }
}
