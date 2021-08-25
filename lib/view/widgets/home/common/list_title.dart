import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* class ListTitle extends StatefulWidget {
  
  @override
  _ListTitleState createState() => _ListTitleState();
} */

class ListTitle extends ConsumerWidget {
  String title;
  ListTitle(this.title);
  @override
  Widget build(BuildContext context,watch) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 20, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            child: Icon(
              Icons.keyboard_arrow_right_sharp,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
