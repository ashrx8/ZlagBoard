import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class ClimberSuggestionList extends ConsumerWidget {
  @override
  Widget build(BuildContext context,watch) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 50,
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
                    image: AssetImage('assets/climber.jpg'),
                    fit: BoxFit.cover,
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
                        'Alex Megos',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Caption (country)',
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
            top:10,
            child: InkWell(
                  child: Container(
                    child: Text('Follow',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15),),
                  ),
                ),
          )
        ],
      ),
    );
  }
}
