import 'package:zlagboard/model/data.dart';
import 'package:zlagboard/view/widgets/home/recently_visited/recently_visited_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class RecentlyVisited extends ConsumerWidget {
  List<Data> data;
  String listType;
  RecentlyVisited(this.data,this.listType);
  List<Item> recentlyVisited = [];
  @override
  Widget build(BuildContext context,watch) {
    for (int i = 0; i < data.length; i++) {
      if (data[i].name == listType) {
        recentlyVisited = data[i].payload.items;
      }
    }
    return Container(
      margin: EdgeInsets.only(left: 10, top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: recentlyVisited.length,
            itemBuilder: (_, int index) {
              return GuidetedList(recentlyVisited[index]);
            }),
      ),
      
    );
  }
}
