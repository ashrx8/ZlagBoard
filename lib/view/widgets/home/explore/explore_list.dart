import 'package:zlagboard/model/data.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class ExploreList extends ConsumerWidget {
  Collection explore;
  int index;
  int length;
  ExploreList(this.explore, this.index, this.length);
  @override
  Widget build(BuildContext context,watch) {
    return Container(
      width: MediaQuery.of(context).size.width - 25,
      margin: index != length - 1
          ? EdgeInsets.only(left: 10)
          : EdgeInsets.only(right: 10, left: 10),
      height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Container(
            child: CachedNetworkImage(
              imageUrl: explore.cover,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                  ),
                  
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 15),
                      child: Text(
                        explore.name + " / " + explore.provider,
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        explore.subtitle + " - " + explore.label,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.alt_route,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Text(
                                explore.id.toString() + " " + "routes",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          'SEE MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ],
      ),
    );
  }
}
