import 'package:flutter/material.dart';

class GridViewCountWidget extends StatelessWidget {
  const GridViewCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      "https://png.pngtree.com/png-vector/20210602/ourmid/pngtree-3d-beauty-cosmetics-product-design-png-image_3350323.jpg",
      "https://static.vecteezy.com/system/resources/thumbnails/017/054/078/small/headphones-design-3d-rendering-for-product-mockup-free-png.png",
      "https://image.similarpng.com/very-thumbnail/2021/12/Collection-of-make-up-products-on-transparent-background-PNG.png",
      "https://e7.pngegg.com/pngimages/44/737/png-clipart-stationery-office-supplies-paper-product-retail-oriflame-products-pencil-retail-thumbnail.png",
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(15, (index) {
            return Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text("GridViewCount"),
            );
          })),
    );
  }
}
