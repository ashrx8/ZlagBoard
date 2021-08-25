import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class LatestAscentList extends ConsumerWidget {
  @override
  Widget build(BuildContext context,watch) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/ascent.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Marvin kobaid',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Container(
                            child: Text(
                              'Route - Grade',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.only(left: 4, top: 4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 15,
                            width: 15,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Country - Crag',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 20,
            top: 10,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      '25 Aug 2020',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange[300],
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange[300],
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange[300],
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange[300],
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
