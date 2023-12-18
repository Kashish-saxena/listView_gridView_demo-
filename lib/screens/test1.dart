import 'package:flutter/material.dart';
import 'package:horizontal_list_demo/widgets/cliprrect.dart';
import 'package:horizontal_list_demo/widgets/gridview_builder.dart';
import 'package:horizontal_list_demo/widgets/gridview_count.dart';
import 'package:horizontal_list_demo/widgets/gridview_custom.dart';
import 'package:horizontal_list_demo/widgets/gridview_extent.dart';
import 'package:horizontal_list_demo/widgets/listview_builder.dart';

class Test1Screen extends StatefulWidget {
  const Test1Screen({super.key});

  @override
  State<Test1Screen> createState() => _Test1ScreenState();
}

class _Test1ScreenState extends State<Test1Screen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 6, color: Colors.black)
                ]),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ListView Builder",
                  style: TextStyle(fontSize: 20),
                ),
                ListViewBuilderWidget(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 6, color: Colors.black)
                ]),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GridView Count",
                  style: TextStyle(fontSize: 20),
                ),
                GridViewCountWidget(),
              ],
            ),
          ),
          Text(
            "GridView Builder",
            style: TextStyle(fontSize: 20),
          ),
          GridViewBuilderWidget(),
          Text(
            "GridView Extent",
            style: TextStyle(fontSize: 20),
          ),
          GridViewExtentWidget(),
          Text(
            "GridView Custom",
            style: TextStyle(fontSize: 20),
          ),
          GridViewCustomWidget(),
          Text(
            "ClipRRect",
            style: TextStyle(fontSize: 20),
          ),
          ClipRRectWidget(),
        ],
      ),
    );
  }
}
