import 'package:flutter/material.dart';
import 'package:horizontal_list_demo/screens/test1.dart';
import 'package:horizontal_list_demo/screens/test2.dart';
import 'package:horizontal_list_demo/widgets/cliprrect.dart';
import 'package:horizontal_list_demo/widgets/common_container.dart';
import 'package:horizontal_list_demo/widgets/gridview_builder.dart';
import 'package:horizontal_list_demo/widgets/gridview_count.dart';
import 'package:horizontal_list_demo/widgets/gridview_custom.dart';
import 'package:horizontal_list_demo/widgets/gridview_extent.dart';
import 'package:horizontal_list_demo/widgets/listview_builder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return
        // DefaultTabController(
        //   length: 2,
        //   child:
        Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(widget.title),
      ),
      //   bottom:  PreferredSize(
      //     preferredSize: Size.fromHeight(100),
      //     child: TabBar(tabs: [
      //     Tab(
      //       text: "test",
      //     ),
      //     Tab(
      //       text: "test 2",
      //     )
      //   ]),
      //   )
      // ),
      // body:
      // TabBarView(
      //   children: [
      //     Test1Screen(),
      //     Test2Screen()
      //   ],
      // )

      body: const SingleChildScrollView(
        child: Column(
          children: [
            ContainerWidget(
                text: "ListView Builder", widget: ListViewBuilderWidget()),
            ContainerWidget(
                text: "GridView count", widget: GridViewCountWidget()),
            ContainerWidget(
                text: "GridView Builder", widget: GridViewBuilderWidget()),
            ContainerWidget(
                text: "GridView Extent", widget: GridViewExtentWidget()),
            ContainerWidget(
                text: "GridView Custom", widget: GridViewCustomWidget()),
            ContainerWidget(
              text: "ClipRRect", widget: ClipRRectWidget()),
          ],
        ),
      ),
    );
  }
}
