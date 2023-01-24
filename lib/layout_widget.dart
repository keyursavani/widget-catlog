import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class layoutwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return layoutwidgetstate();
  }
}

class layoutwidgetstate extends State<layoutwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Widget Example"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return animatedalign();
                              }),
                            );
                          },
                          child: Text("AnimatedAlign"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return aspectratio();
                              }),
                            );
                          },
                          child: Text("AspectRatio"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return baseline();
                              }),
                            );
                          },
                          child: Text("Baseline"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return constrainedbox();
                              }),
                            );
                          },
                          child: Text("ConstrainedBox"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return fractionallysizedbox();
                              }),
                            );
                          },
                          child: Text("FractionallySizedBox"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return intrinsic();
                              }),
                            );
                          },
                          child: Text("Intrinsic Height & Widht"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return limitedbox();
                              }),
                            );
                          },
                          child: Text("Limited Box"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return offstage();
                              }),
                            );
                          },
                          child: Text("Offstage"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return trasform();
                              }),
                            );
                          },
                          child: Text("Transform Widget"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return flow();
                              }),
                            );
                          },
                          child: Text("Flow Widget"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return indexstack();
                              }),
                            );
                          },
                          child: Text("IndexedStack"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return layoutbuilder();
                              }),
                            );
                          },
                          child: Text("LayoutBuilder"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return table();
                              }),
                            );
                          },
                          child: Text("Table Widget"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return wrapwidget();
                              }),
                            );
                          },
                          child: Text("Wrap Widget"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return cupertinoslivernavigationbar();
                              }),
                            );
                          },
                          child: Text("CupertinoSliverNavigationBar"),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return wrapwidget();
                              }),
                            );
                          },
                          child: Text(""),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15),
                            backgroundColor: Colors.blueGrey,
                          ),
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

class animatedalign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return animatedalignstate();
  }
}

class animatedalignstate extends State<animatedalign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimtedAlign Widget"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: 250.0,
              height: 250.0,
              color: Colors.black26,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.topLeft,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 100.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class aspectratio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return aspectratiostate();
  }
}

class aspectratiostate extends State<aspectratio> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio Widget"),
      ),
      body: Center(
          child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: 100.0,
        height: 100.0,
        child: AspectRatio(
          aspectRatio: 0.5,
          child: Container(
            width: 100.0,
            height: 50.0,
            color: Colors.green,
          ),
        ),
      )),
    );
  }
}

class baseline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BaseLine Example"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class constrainedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox Widget"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 70,
            minHeight: 70,
            maxWidth: 250,
            maxHeight: 250,
          ),
          child: Container(color: Colors.red, width: 5000, height: 5000),
        ),
      ),
    );
  }
}

class fractionallysizedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox Example"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          color: Colors.blueGrey,
          child: FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Container(
              height: 500,
              width: 500,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ),
      ),
    );
  }
}

class intrinsic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Intrinsic Hight & Width"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(height: 50, width: 50, color: Colors.blue),
                    Container(height: 50, width: 100, color: Colors.red),
                    Container(height: 50, width: 150, color: Colors.green),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(height: 50, width: 50, color: Colors.blue),
                    Container(height: 100, width: 50, color: Colors.red),
                    Container(height: 150, width: 50, color: Colors.green),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class limitedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text("LimitedBox Example"),
      ),
      body: Column(
        children: [
          LimitedBox(
            maxHeight: 200,
            child: Container(height: 500, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class offstage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return offstagewidget();
  }
}

class offstagewidget extends State<offstage> {
  final GlobalKey _key = GlobalKey();
  bool _offstage = true;

  Size _getFlutterLogoSize() {
    final RenderBox renderLogo =
        _key.currentContext!.findRenderObject()! as RenderBox;
    return renderLogo.size;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("OffStage Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Offstage(
              offstage: _offstage,
              child: FlutterLogo(
                key: _key,
                size: 150.0,
              ),
            ),
            Text('Flutter logo is offstage: $_offstage'),
            ElevatedButton(
              child: const Text('Toggle Offstage Value'),
              onPressed: () {
                setState(() {
                  _offstage = !_offstage;
                });
              },
            ),
            if (_offstage)
              ElevatedButton(
                  child: const Text('Get Flutter Logo size'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Flutter Logo size is ${_getFlutterLogoSize()}'),
                      ),
                    );
                  }),
          ],
        ),
      ),
    );
  }
}

class trasform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform Widget Example"),
      ),
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          // height: 200,
          // width: 200,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(3.14 / 12.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.deepOrangeAccent,
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}

class flow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return flowstate();
  }
}

class flowstate extends State<flow> with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.menu,
    Icons.email,
    Icons.new_releases,
    Icons.notifications,
    Icons.bluetooth,
    Icons.wifi,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => lastTapped = icon);
    }
  }

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  Widget flowMenuItem(IconData icon) {
    final double buttonDiameter =
        MediaQuery.of(context).size.width / menuItems.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RawMaterialButton(
        // fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
        fillColor: Colors.teal,
        splashColor: Colors.grey,
        shape: const CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed
              ? menuAnimation.reverse()
              : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 35.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow Widget Exapmle"),
      ),
      body: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children: menuItems
            .map<Widget>((IconData icon) => flowMenuItem(icon))
            .toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = context.childCount - 1; i >= 0; i--) {
      // double dx = (context.getChildSize(i)?.height * i);
      double dx = context.getChildSize(i)!.height * i;
      context.paintChild(
        i,
        transform:
            Matrix4.translationValues(0, dx * menuAnimation.value + 10, 0),
      );
    }
  }
}

class indexstack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return indexstackstate();
  }
}

class indexstackstate extends State<indexstack> {
  List<String> names = <String>['abc', 'def', 'xyz', 'jkl'];
  int index = 0;
  final TextEditingController fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("IndexStack Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 300,
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the name for a person to track',
              ),
              onSubmitted: (String value) {
                setState(() {
                  names.add(value);
                });
                fieldText.clear();
              },
              controller: fieldText,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (index == 0) {
                      index = names.length - 1;
                    } else {
                      index -= 1;
                    }
                  });
                },
                child: const Icon(Icons.chevron_left, key: Key('gesture1')),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IndexedStack(
                    index: index,
                    children: <Widget>[
                      for (String name in names) PersonTracker(name: name)
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (index == names.length - 1) {
                      index = 0;
                    } else {
                      index += 1;
                    }
                  });
                },
                child: const Icon(Icons.chevron_right, key: Key('gesture2')),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PersonTracker extends StatefulWidget {
  const PersonTracker({super.key, required this.name});

  final String name;

  @override
  State<PersonTracker> createState() => _PersonTrackerState();
}

class _PersonTrackerState extends State<PersonTracker> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(widget.name),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 248, 255),
        border: Border.all(color: const Color.fromARGB(255, 54, 60, 244)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text('Name: ${widget.name}'),
          Text('Score: $counter'),
          TextButton.icon(
            key: Key('increment${widget.name}'),
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            label: const Text('Increment'),
          )
        ],
      ),
    );
  }
}

class layoutbuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return layoutbuilderstate();
  }
}

class layoutbuilderstate extends State<layoutbuilder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder Example"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(64),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Container(
                  height: 32,
                  color: Colors.green,
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Container(
                    height: 32,
                    width: 32,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 64,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                Container(
                  height: 64,
                  width: 128,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 32,
                  color: Colors.yellow,
                ),
                Center(
                  child: Container(
                    height: 32,
                    width: 32,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class wrapwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.start,
        spacing: 10.0,
        // gap between adjacent chips
        runSpacing: 20.0,
        // gap between lines
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text(
                  'AH',
                  textAlign: TextAlign.center,
                )),
            label: const Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text('ML', textAlign: TextAlign.center,),
            ),
            label: const Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text('HM', textAlign: TextAlign.center,),
            ),
            label: const Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text('JL'),
            ),
            label: const Text('Laurens'),
          ),
        ],
      ),
    );
  }
}

class cupertinoslivernavigationbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return cupertinoslivernavigationbarstate();
  }
}

class cupertinoslivernavigationbarstate
    extends State<cupertinoslivernavigationbar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CupertinoPageScaffold(
        // A ScrollView that creates custom scroll effects using slivers.
        child: CustomScrollView(
          // A list of sliver widgets.
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              leading: Icon(CupertinoIcons.music_house),
              largeTitle: Text('Contacts'),
              trailing: Icon(CupertinoIcons.arrow_2_circlepath),
            ),
            SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text('Hello World!', textAlign: TextAlign.center),
                  CupertinoButton.filled(
                    onPressed: () {
                      Navigator.push(context, CupertinoPageRoute<Widget>(
                          builder: (BuildContext context) {
                        return  NextPage();
                      }));
                    },
                    child: Text('Next Page'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.inactiveGray,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                    ? CupertinoColors.black
                    : CupertinoColors.white,
              ),
            ),
            middle: const Text('Contacts Group', style: TextStyle(color: Colors.white),),
            largeTitle: const Text('Family', style:  TextStyle(color: Colors.white),),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('', textAlign: TextAlign.center),
                Text('',
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
