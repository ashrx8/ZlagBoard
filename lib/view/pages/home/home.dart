import 'package:zlagboard/model/data.dart';
import 'package:zlagboard/view/pages/home/pages_option.dart';
import 'package:zlagboard/view/widgets/home/climber_suggestion/climber_suggestion.dart';
import 'package:zlagboard/view/widgets/home/common/list_title.dart';
import 'package:zlagboard/view/widgets/home/current_challenges/current_challenges.dart';
import 'package:zlagboard/view/widgets/home/explore/explore_collection.dart';
import 'package:zlagboard/view/widgets/home/latest_ascesnts/latest_ascents.dart';
import 'package:zlagboard/view/widgets/home/recently_visited/recently_visited.dart';
import 'package:zlagboard/view/widgets/home/top_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List data = [
  {
    "id": 8,
    "name": null,
    "subtitle": null,
    "priority": 50,
    "url": "vl-climbing://redeem",
    "render_class": "vl_redeem_code_card",
    "cover": null,
    "icon": null,
    "payload": null
  },
  {
    "id": 12,
    "name": "New Gyms",
    "subtitle": null,
    "priority": 32,
    "url": null,
    "render_class": "vl_items_card",
    "cover": null,
    "icon": null,
    "payload": {
      "items": [
        {
          "item_id": 1,
          "item_type": "gym",
          "name": "Kletterzentrum Brixen",
          "town": "Brixen",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/153773d449b6c8de94df65972318315f.jpg"
        },
        {
          "item_id": 2,
          "item_type": "gym",
          "name": "Kletterzentrum Bruneck",
          "town": "Bruneck",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/10274970a025af195f88549a4771916f.jpg"
        },
        {
          "item_id": 3,
          "item_type": "gym",
          "name": "KletterBar Offenbach",
          "town": "Offenbach",
          "country": "Germany",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/d0183c2f12979b70afe9326ba91ed3c8.jpg"
        },
        {
          "item_id": 4,
          "item_type": "gym",
          "name": "Cube Kletterzentrum",
          "town": "Wetzlar",
          "country": "Germany",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/4cd05be4361b2a06724d0695e2d29776.jpg"
        }
      ]
    }
  },
  {
    "id": 1,
    "name": "Current Challenges",
    "subtitle": null,
    "priority": 40,
    "url": "vl-climbing://challenges",
    "render_class": "vl_challenges_card",
    "cover": null,
    "icon": null,
    "payload": {
      "challenges": [
        {
          "id": 2205,
          "title": "August Challenge",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/406c59ff1ba832212af00c55d0ecf43e.jpg",
          "thumbnail":
              "https://d1ffqbcmevre4q.cloudfront.net/fb907fdb0e9f63cd810948a932f7c3a9.png",
          "icon":
              "https://d1ffqbcmevre4q.cloudfront.net/f4504aa67dc63cab21c7d99e19051501.png",
          "start_date": "2021-08-01 00:00:00 +0000",
          "expiration_date": "2021-08-31 23:59:00 +0000",
          "created_at": "2021-07-19 15:26:06 +0000",
          "updated_at": "2021-07-20 15:13:14 +0000",
          "participants": 581,
          "scope": "global"
        },
        {
          "id": 2200,
          "title": "adidas x Ötztal Treasure Hunt",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/fba0369a785b8711bc4eff2eb98a3795.jpg",
          "thumbnail":
              "https://d1ffqbcmevre4q.cloudfront.net/484b271293472ac044daed2cc180ebc9.jpg",
          "icon":
              "https://d1ffqbcmevre4q.cloudfront.net/852d66f4e01ca0ff0b643860c58260bd.png",
          "start_date": "2021-08-01 00:00:00 +0000",
          "expiration_date": "2021-09-30 23:59:00 +0000",
          "created_at": "2021-05-18 14:13:01 +0000",
          "updated_at": "2021-08-04 10:24:12 +0000",
          "participants": 223,
          "scope": "global"
        }
      ]
    }
  },
  {
    "id": 7,
    "name": "Explore Collections",
    "subtitle": null,
    "priority": 30,
    "url": "vl-climbing://collections",
    "render_class": "vl_collections_card",
    "cover": null,
    "icon": null,
    "payload": {
      "collections": [
        {
          "id": 650,
          "name": "Tyrol",
          "subtitle": "Rashia",
          "rating": 4,
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/0ac52c2ff1fc65744b3c7f8926da08e5.jpg",
          "categories": 1,
          "provider": "VERTICALLIFE",
          "updated_at": {"seconds": 1596114172, "nanos": 0},
          "items": [],
          "description":
              "The Austrian province of Tyrol lies in the heart of the Eastern Alps.",
          "label": "92 crags",
          "polygon": [],
          "brand": null
        },
        {
          "id": 696,
          "name": "Arco",
          "subtitle": "Italy",
          "rating": 4,
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/7505553bfdf29416be4876332ab76e4c.jpg",
          "categories": 1,
          "provider": "VERTICALLIFE",
          "updated_at": {"seconds": 1596114173, "nanos": 0},
          "items": [],
          "description":
              "It is not without reason that Arco is called the mecca of sport climbing.",
          "label": "131 crags",
          "polygon": [],
          "brand": null
        },
        {
          "id": 729,
          "name": "Frankenjura 2",
          "subtitle": "Germany",
          "rating": 4,
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/d3d30d3f4da6816e5b9ba77c8cf371cc.jpg",
          "categories": 1,
          "provider": "VERTICALLIFE",
          "updated_at": {"seconds": 1596114174, "nanos": 0},
          "items": [],
          "description":
              "The Frankenjura is the most important climbing area in Germany.",
          "label": "95 crags",
          "polygon": [],
          "brand": null
        },
        {
          "id": 746,
          "name": "Kalymnos",
          "subtitle": "Greece",
          "rating": 4,
          "cover": "3d97df84214818a1417792398e4f9e9f",
          "categories": 1,
          "provider": "VERTICALLIFE",
          "updated_at": {"seconds": 1596638698, "nanos": 0},
          "items": [],
          "description":
              "My friend Thomas and I have been here for a few days.",
          "label": "80 crags",
          "polygon": [],
          "brand": null
        }
      ]
    }
  },
  {
    "id": 4,
    "name": null,
    "subtitle": null,
    "priority": 0,
    "url": null,
    "render_class": "vl_login_card",
    "cover": null,
    "icon": null,
    "payload": null
  },
  {
    "id": 98,
    "name": "Recently updated crags",
    "subtitle": null,
    "priority": 29,
    "url": null,
    "render_class": "vl_items_card",
    "cover": null,
    "icon": null,
    "payload": {
      "items": [
        {
          "item_id": 1,
          "item_type": "location",
          "name": "Dürrensee",
          "town": "Dürrensee",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/069701412cb4ac9eb1c5e8c0e826ea9f.jpg",
          "updatedAt": "2019-11-04T08:59:43Z"
        },
        {
          "item_id": 2,
          "item_type": "location",
          "name": "Geierwand",
          "town": "Gais",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/827d0389e757ee88f1b603cc11fdf94a.jpg",
          "updatedAt": "2019-11-04T08:59:43Z"
        },
        {
          "item_id": 3,
          "item_type": "location",
          "name": "Innerfeld",
          "town": "Innerfeld",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/e2908fca9248b94d7ddef5f77c55217b.jpg",
          "updatedAt": "2019-11-04T08:59:43Z"
        },
        {
          "item_id": 5,
          "item_type": "location",
          "name": "Hohe Festung",
          "town": "Franzensfeste",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/4cd05be4361b2a06724d065e2d29776.jpg",
          "updatedAt": "2019-11-04"
        },
        {
          "item_id": 6,
          "item_type": "location",
          "name": "Zanser Alm",
          "town": "Zans",
          "country": "Italy",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/2d7bdefa139f51ea0574657a3aaa555a.jpg",
          "updatedAt": "2019-11-04T08:59:43Z"
        },
        {
          "item_id": 4,
          "item_type": "location",
          "name": "Rio Gere",
          "town": "Wetzlar",
          "country": "Boston",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/f2830b165281273df4f198c8a23b4c33.jpg",
          "updatedAt": "2019-11-04T08:59:43'Z'"
        }
      ]
    }
  },
  {
    "id": 120,
    "name": null,
    "subtitle": null,
    "priority": 1,
    "url": null,
    "render_class": "vl_focussed_card",
    "cover": null,
    "icon": null,
    "payload": {
      "items": [
        {
          "ordering": 2,
          "title": "Discover the Tyrol Guidebook",
          "subtitle": "Get inspiration from 92 crags",
          "button_label": "see more",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/61fc52e3fd95cc40ffe31bfc3015d9af.jpg",
          "url": "vl-climbing://collection/1"
        },
        {
          "ordering": 1,
          "title": "Discover Vertikale Brixen",
          "subtitle": "The biggest Gym in the heart of the Dolomites",
          "button_label": "see more",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/153773d449b6c8de94df65972318315f.jpg",
          "url": "vl-climbing://gym/1"
        },
        {
          "item_id": 3,
          "title": "Vertical-Life Challenges",
          "subtitle": "Join, tick and win prizes",
          "button_label": "see more",
          "cover":
              "https://d1ffqbcmevre4q.cloudfront.net/df90087bb24b5ef534978b27d5f0e158.jpg",
          "url": "vl-climbing://challenges"
        }
      ]
    }
  }
];
List<Data> mainData = data.map((i) => Data.fromJson(i)).toList();

/* class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
} */

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context,watch) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            child: Container(
              height: 20,
              width: 20,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/top_image.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          centerTitle: true,
          title: Center(
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.1), BlendMode.lighten),
                    image: AssetImage(
                      'assets/logo/logo.png',
                    ),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                )),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TopTile(mainData),
            PagesOption(),
            ListTitle('Recently Visited'),
            RecentlyVisited(mainData, 'Recently updated crags'),
            ListTitle('Recommended crages'),
            RecentlyVisited(mainData, 'New Gyms'),
            ListTitle('Explore Collections'),
            ExploreCollection(mainData),
            ListTitle('Recently updated crags'),
            RecentlyVisited(mainData, 'Recently updated crags'),
            ListTitle('New Gyms'),
            RecentlyVisited(mainData, 'New Gyms'),
            ListTitle('Current Challenges'),
            CurrentChallenges(mainData),
            ListTitle('Climber suggestions'),
            ClimberSuggestion(),
            ListTitle('Latest ascents'),
            LatestAscents(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo/zlagboard.png'),
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
