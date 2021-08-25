import 'package:zlagboard/model/data.dart';
import 'package:zlagboard/view/widgets/home/explore/explore_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class ExploreCollection extends ConsumerWidget {
  List<Data> data;
  ExploreCollection(this.data);
  List<Collection>exploreCollection;
  @override
  Widget build(BuildContext context,watch) {
    for (int i = 0; i < data.length; i++) {
      if (data[i].priority ==30) {
        exploreCollection = data[i].payload.collections;
      }
    }
    return Container(
      margin: EdgeInsets.only( top: 15,bottom: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 225,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: exploreCollection.length,
            itemBuilder: (_, int index) {
              return ExploreList(exploreCollection[index],index,exploreCollection.length);
            }),
      ),
      
    );
  }
}