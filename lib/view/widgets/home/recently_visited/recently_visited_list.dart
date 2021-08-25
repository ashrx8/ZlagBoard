import 'package:zlagboard/model/data.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class GuidetedList extends ConsumerWidget {
  Item visitedList;
  GuidetedList(this.visitedList);
  @override
  Widget build(BuildContext context,watch) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: [
                  Container(
                    width: 220,
                    height: 230,
                    child: CachedNetworkImage(
                      imageUrl: visitedList.cover,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                              ),
                        ),
                      ),
                      
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Center(
                        child: Icon(Icons.star),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 2),
              child: Text(
                visitedList.name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 2),
              child: Text(
                visitedList.town + ", " + visitedList.country,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            )
          ]),
    );
  }
}
