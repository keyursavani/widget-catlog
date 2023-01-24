import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scrollingwidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return scrollingwidgetstate();
  }
}
class scrollingwidgetstate extends State<scrollingwidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Scrolling Widget"),
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
                               return notificationlistener();
                             }),
                           );
                         },
                         child: Text("NotificationListener"),
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
                                 return pageview();
                               }));
                         },
                         child: Text("PageView"),
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
                       padding: const EdgeInsets.only(left: 10),
                       child: ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) {
                               return pagecontroller();
                             }),
                           );
                         },
                         child: Text("PageController"),
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
                                 return reorderablelistview();
                               }));
                         },
                         child: Text("ReorderableListView"),
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
                       padding: const EdgeInsets.only(left: 10),
                       child: ElevatedButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) {
                               return singlechildscrollview();
                             }),
                           );
                         },
                         child: Text("Single Child ScrollView"),
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
                                 return reorderablelistview();
                               }));
                         },
                         child: Text(""),
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

class notificationlistener extends StatelessWidget{
  static const List<String> _tabs = <String>['Months', 'Days'];
  static const List<String> _months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'Jun',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  static const List<String> _days = <String>[
    'Sunday',
    'Monday',
    'Tuesday',
    'wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        // Listens to the scroll events and returns the current position.
        body: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollNotification) {
            if (scrollNotification is ScrollStartNotification) {
              debugPrint('Scrolling has started');
            } else if (scrollNotification is ScrollEndNotification) {
              debugPrint('Scrolling has ended');
            }
            // Return true to cancel the notification bubbling.
            return true;
          },
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: const Text('NotificationListener Widget'),
                  // backgroundColor: Colors.deepOrange,
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                ListView.builder(
                  itemCount: _months.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(_months[index]));
                  },
                ),
                ListView.builder(
                  itemCount: _days.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(_days[index]));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
  );
  }
}

class pageview extends StatelessWidget{
  final PageController controller = PageController(
    initialPage: 2,
    viewportFraction: 1,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Widget"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
      controller: controller,

      children: const <Widget>[
        Center(
          child: Text('First Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
      ],
    ),
    );
  }
}

class pagecontroller extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return pagecontrollerstate();
  }
}
class pagecontrollerstate extends State<pagecontroller>{
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PageController Widget"),
      ),
      body:PageView(
        controller: _pageController,
        children: <Widget>[
          Container(
            color: Colors.white54,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_pageController.hasClients) {
                    _pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Text('Next'),
              ),
            ),
          ),
          Container(
            color: Colors.white38,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_pageController.hasClients) {
                    _pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Text('Previous'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class reorderablelistview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return reorderablelistviewstate();
  }
}
class reorderablelistviewstate extends State<reorderablelistview>{
  final List<int> _items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    final Color draggableItemColor = colorScheme.secondary;

    Widget proxyDecorator(
        Widget child, int index, Animation<double> animation) {
      return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          final double animValue = Curves.easeInOut.transform(animation.value);
          final double elevation = lerpDouble(0, 6, animValue)!;
          return Material(
            elevation: elevation,
            color: draggableItemColor,
            shadowColor: draggableItemColor,
            child: child,
          );
        },
        child: child,
      );
    }
  return Scaffold(
    appBar: AppBar(
      title: Text("REorderable ListView"),
    ),
    body: ReorderableListView(
      buildDefaultDragHandles: false,
      // padding: const EdgeInsets.symmetric(horizontal: 40),
      header: Text("Header"),
      proxyDecorator: proxyDecorator,
       children: <Widget>[
      for (int index = 0; index < _items.length; index++)
        Container(
          key: Key('$index'),
          color: _items[index].isOdd ? oddItemColor : evenItemColor,
          child: Row(
            children: <Widget>[
              Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(8),
                child: ReorderableDragStartListener(
                  index: index,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    elevation: 2,
                  ),
                ),
              ),
              Text('Item ${_items[index]}'),
            ],
          ),
        ),
    ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    ),
  );
  }
}
class scrollbar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return scrollbarstate();
  }
}
class scrollbarstate extends State<scrollbar> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollBar Widget"),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
              children: <Widget>[
                SizedBox(
                    width: constraints.maxWidth / 2,
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: _firstController,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                          controller: _firstController,
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Scrollable 1 : Index $index'),
                            );
                          }),
                    )),
                SizedBox(
                    width: constraints.maxWidth / 2,
                    child: Scrollbar(
                      thumbVisibility: true,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          primary: true,
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                height: 50,
                                color: index.isEven
                                    ? colorScheme.primary.withOpacity(0.05)
                                    : colorScheme.primary.withOpacity(0.15),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Scrollable 2 : Index $index'),
                                ));
                          }),
                    )),
              ],
            );
          }),
    );
  }
}

class singlechildscrollview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return singlechildscrollviewstate();
  }
}
class singlechildscrollviewstate extends State<singlechildscrollview>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Single child ScrollView"),
      ),
      body:DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      // A fixed-height child.
                      color:  Colors.black12, // Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      // Another fixed-height child.
                      color:  Colors.black26, // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      // A fixed-height child.
                      color:  Colors.black38, // Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      // Another fixed-height child.
                      color:  Colors.black12, // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                    Container(
                      // A fixed-height child.
                      padding: const EdgeInsets.all(20),
                      color:  Colors.black26,// Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      // Another fixed-height child.
                      color:  Colors.black26, // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

