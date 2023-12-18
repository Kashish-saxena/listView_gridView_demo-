import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      "Mens",
      "Womens",
      "Kids",
      "Electronics",
      "Home Decor",
      "Accessories",
    ];
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Container(
            alignment: Alignment.center,
            width: 120,
            decoration:
                const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            child: Text(
              items[index],
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          );
        }),
        itemCount: items.length,
      ),
    );
  }
}
