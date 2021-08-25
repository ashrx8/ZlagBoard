import 'package:zlagboard/model/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class ChallengesList extends ConsumerWidget{
   Challenge challenge;
  int index;
  int length;
  ChallengesList(this.challenge, this.index, this.length);
  @override
  Widget build(BuildContext context,watch) {
    DateTime start = DateTime.parse(challenge.startDate);
    DateTime end = DateTime.parse(challenge.expirationDate);
    String stratDate = DateFormat('MMMd').format(start);
    String endDate = DateFormat('MMMd').format(end);
    String year = DateFormat('y').format(end);
    print('Start Date--------------------');
    print(stratDate);
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
          CachedNetworkImage(
            imageUrl: challenge.thumbnail,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
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
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        challenge.title,
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        stratDate + ' - ' + endDate + ', ' + year,
                        style: TextStyle(
                            fontSize: 14,
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
                              child: Image.network(
                                challenge.icon,
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Text(
                                '250 m',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Icon(
                                Icons.people,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Text(
                                challenge.participants.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
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
