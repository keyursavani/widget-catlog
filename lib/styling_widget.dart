import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stylwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return stylwidgetstate();
  }
}

class stylwidgetstate extends State<stylwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Styling Widget"),
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
                                return mediaquery();
                              }),
                            );
                          },
                          child: Text("MediaQuery"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return theme();
                                }));
                          },
                          child: Text("Theme"),
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

class mediaquery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mediaquerystate();
  }
}
class mediaquerystate extends State<mediaquery>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery.of(context).size.width > 600 ) {
            return  _buildWidgetContainer();
          }
          return _buildNormalContainer();
        },
      ),
    );
  }
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);

final rating = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    // mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        child: stars,
      ),
      Expanded(
        child: const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Robot',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ),
    ],
  ),
);

const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  // fontSize: 12,
  height: 2,
);

final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green),
              const Text('PREP:'),
              const Text('25 min'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Icon(Icons.timer, color: Colors.green),
              const Text('COOK:'),
              const Text('1 hr'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green),
              const Text('FEEDS:'),
              const Text('4-6'),
            ],
          ),
        ),
      ],
    ),
  ),
);

final leftColumn = Container(
  padding: const EdgeInsets.fromLTRB(5, 30, 5, 15),
  child: Column(
    children: [
      titleText,
      subTitle,
      rating,
      iconList,
    ],
  ),
);

final titleText = Padding(padding: const EdgeInsets.all(15),
  child: Text(
    "Strawberry Pavlova",
    style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
  ),
);

final subTitle = Text(
    "Pavlova is a meringue-based desert named after the Russian ballerina anna Pavlova."
        " Pavlova fealures a erisp erusl and soft, light inside, lopper with fruit and"
        " whipped cream.");

final mainImage = Image.asset(
  'assets/images/mixed-berries.jpg',
  fit: BoxFit.fill,
);

Widget _buildNormalContainer(){
  return Center(
    child: Container(
      padding: const EdgeInsets.fromLTRB(5,40,5,10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
            child: mainImage,
          ),
          Expanded(
            child: SizedBox(
              child: leftColumn,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildWidgetContainer(){
  return Center(
    child: Container(
      padding: const EdgeInsets.fromLTRB(5,35,5,0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
            child: mainImage,
          ),
          Expanded(
            child: SizedBox(
              child: leftColumn,
            ),
          ),
        ],
      ),
    ),
  );
}

class theme  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ),
        // textTheme:
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
           },
          ),
          title: Text("Them Example"),
        ),
        body: Theme(
          data: ThemeData.from(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
          ),
          child: Builder(
            builder: (BuildContext context) {
              return Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}