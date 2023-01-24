import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class widgetofweek extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return widgetofweekstate();
  }
}

class widgetofweekstate extends State<widgetofweek> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Of The Week"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ratingbar();
                            }),
                          );
                        },
                        child: Text("RatingBar"),
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 15),
                          backgroundColor: Colors.blueGrey,
                        ),
                      ),
                    )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return lineargradient();
                            }));
                          },
                          child: Text("Linear gradient"),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15),
                              backgroundColor: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return navigationrail();
                              }),
                            );
                          },
                          child: Text("Navigation Rail"),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15),
                              backgroundColor: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ratingbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ratingbarstate();
  }
}

class ratingbarstate extends State<ratingbar> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RatingBar Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            // implement the rating bar
            RatingBar(
              maxRating: 5,
              minRating: 1,
              initialRating: 0,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 50,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              direction: Axis.horizontal,
              glowColor: Colors.lightGreen,
              glowRadius: 15,
              glow: true,
              updateOnDrag: true,
              tapOnlyMode: false,
              ignoreGestures: false,
              // onRatingUpdate: _saveRating,
              ratingWidget: RatingWidget(
                  full: Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  half: Icon(
                    Icons.star_half,
                    color: Colors.orange,
                  ),
                  empty: Icon(
                    Icons.star_outline,
                    color: Colors.grey,
                  )),
              onRatingUpdate: (value) {
                setState(() {
                  _ratingValue = value;
                });
              },
            ),
            const SizedBox(height: 25),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Text(
                _ratingValue != null ? _ratingValue.toString() : 'Rate it!',
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class lineargradient extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return lineargradientstate();
  }
}

class lineargradientstate extends State<lineargradient> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LinearGradient Example"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment(0.5, 0.5),
            end: Alignment(0.7, 0.7),
            colors: [
              Colors.red,
              Colors.green,
              // Colors.blue,
            ],
            tileMode: TileMode.repeated,
            // stops: [
            //   0.2,
            //   0.5,
            //   1,
            // ]
          )),
          child: Center(
            child: Text(
              'LinearGradient Example',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class navigationrail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return navigationrailstate();
  }
}

class navigationrailstate extends State<navigationrail> {
  final List<Widget> _mainContents = [
    Container(
      // color: Colors.yellow.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Washlist',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      // color: Colors.purple.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Account',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      // color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Cart',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationRail Widget"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            // create a navigation rail
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              backgroundColor: Colors.deepOrange[100],
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('Wishlist'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person_outline_rounded),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Account'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.shopping_cart_outlined),
                  selectedIcon: Icon(Icons.shopping_cart),
                  label: Text('Cart'),
                ),
              ],
              selectedIconTheme: IconThemeData(color: Colors.white),
              unselectedIconTheme: IconThemeData(color: Colors.black),
              selectedLabelTextStyle: TextStyle(color: Colors.white),
              unselectedLabelTextStyle: const TextStyle(),
            ),
            const VerticalDivider(thickness: 1, width: 2),
            Expanded(
              child: Center(child: _mainContents[_selectedIndex]),
            )
          ],
        ),
      ),
    );
  }
}
