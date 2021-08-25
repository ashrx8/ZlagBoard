import 'package:zlagboard/model/data.dart';
import 'package:zlagboard/model/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';

final stateProvider=StateProvider<int>((ref)=>0);

class TopTile extends ConsumerWidget {
  List<Data> data;
  TopTile(this.data);
  List<Item> topbarItem = [];
 /*  int topbarItemNum = 0; */
  @override
  Widget build(BuildContext context,watch) {
    final provider=watch(stateProvider);
    final topbarItemNum= provider.state;
    for (int i = 0; i < data.length; i++) {
      if (data[i].priority == 1) {
        topbarItem = data[i].payload.items;
      }
    }
    return Container(
      height: 320,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        ClipPath(
          clipper: Customshape(),
          child: Container(
            height: 320,
            child: CachedNetworkImage(
              imageUrl: topbarItem[topbarItemNum].cover,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken)),
                ),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                           
                              if (provider.state == 0) {
                                 provider.state=0;
                              } else {
                                provider.state--;
                              }
                           
                          },
                          child: Container(
                            child: Icon(Icons.keyboard_arrow_left_sharp,
                                color: Colors.white, size: 30),
                          )),
                      Container(
                        child: Column(children: <Widget>[
                          Container(
                            child: Text(
                              topbarItem[topbarItemNum].title,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Text(
                              topbarItem[topbarItemNum].subtitle,
                              maxLines: 20,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ]),
                      ),
                      InkWell(
                        onTap: () {
                         
                            if (provider.state== topbarItem.length - 1) {
                              provider.state = topbarItemNum;
                            } else {
                             provider.state++;
                            }
                        
                        },
                        child: Container(
                          child: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    'SEE MORE',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
