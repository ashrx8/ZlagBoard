import 'package:zlagboard/view/widgets/home/climber_suggestion/climber_suggestion_list.dart';
import 'package:zlagboard/view/widgets/home/latest_ascesnts/latest_ascents_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class LatestAscents extends ConsumerWidget {
  @override
  Widget build(BuildContext context,watch) {
    
    return Container(
      margin: EdgeInsets.only(left: 12, top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (_, int index) {
             return LatestAscentList();
            }),
      ),
      
    );
  }
}