import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class PagesOption extends ConsumerWidget {
  @override
  Widget build(BuildContext context,watch) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.only(left:4,right:4),
            height: 43,
            width: MediaQuery.of(context).size.width * 0.32,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.book_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width:3),
                Container(
                  child: Text(
                    'My Logbook',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 43,
            width: MediaQuery.of(context).size.width * 0.32,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.flight_takeoff_sharp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width:4),
                Container(
                  child: Text(
                    'Challenges',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 43,
            width: MediaQuery.of(context).size.width * 0.32,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.star_border,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width:4),
                Container(
                  child: Text(
                    'Vouchers',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
