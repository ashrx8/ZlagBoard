import 'package:zlagboard/model/data.dart';
import 'package:zlagboard/view/widgets/home/current_challenges/current_challenges_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class CurrentChallenges extends ConsumerWidget {
   List<Data> data;
  CurrentChallenges(this.data);
  List<Challenge>challenges;
  @override
  Widget build(BuildContext context,watch) {
    for (int i = 0; i <data.length; i++) {
      if (data[i].priority ==40) {
        challenges = data[i].payload.challenges;
      }
    }
    return Container(
      margin: EdgeInsets.only( top: 15,bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 225,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: challenges.length,
            itemBuilder: (_, int index) {
              return ChallengesList(challenges[index],index,challenges.length);
            }),
      ),
      
    );
  }
}