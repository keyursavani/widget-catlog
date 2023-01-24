import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class interactionwidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return interactionwidgettstate();
  }
}

class interactionwidgettstate extends State<interactionwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaction Model Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return absorbpointer();
                  }),
                );
              },
              child: Text("AbsorbPointer"),
              style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return dismissible();
                  }),
                );
              },
              child: Text("Dismissible"),
              style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return draggable();
                  }),
                );
              },
              child: Text("Draggable"),
              style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return draggablescrollableSheet();
                  }),
                );
              },
              child: Text("DraggableScrollableSheet"),
              style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return interactiveviewer();
                  }),
                );
              },
              child: Text("InteractiveViewer"),
              style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return ignorepointer();
                  }),
                );
              },
              child: Text("IgnorePointer"),
              style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class absorbpointer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer Widget"),
      ),
    body: Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: ElevatedButton(
              onPressed: () {
                print("Grey Button Pressed");
                Fluttertoast.showToast(
                    msg: 'Grey Button Pressed',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
              },
              child: null,
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 200.0,
            child: AbsorbPointer(
              // absorbing: true,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                ),
                onPressed: () {
                  print("Blue Button Pressed");
                    Fluttertoast.showToast(
                        msg: 'Blue Button Pressed',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black,
                        textColor: Colors.white);
                },
                child: null,
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}


class dismissible extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return dismissblestate();
  }
}

class dismissblestate extends State<dismissible> {
  List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dismissible Widget"),
          leading: IconButton(
             icon:Icon(Icons.arrow_back),
          onPressed: (){
               Navigator.pop(context);
          }),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                direction: DismissDirection.horizontal,
                background: Container(
                  color: Colors.green,
                  child:ListTile(
                    leading: Icon(Icons.delete),
                  )
                ),
                secondaryBackground: Container(
                  color: Colors.orangeAccent,
                 child:ListTile(
                     trailing : Icon(Icons.delete),
               ),
                ),
                key: ValueKey<int>(items[index]),
                onDismissed: (DismissDirection direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'Item ${items[index]}',
                    ),
                  ),
                ),
              );
            },
          ),
        ) ,
      ),
    );
  }
}

class draggable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return draggablestate();
  }
}

class draggablestate extends State<draggable> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Draggable Widget"),
          leading: IconButton(
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Draggable<int>(
                maxSimultaneousDrags: 4,
                // Data is the value this Draggable stores.
                data: 05,
                feedback: Container(
                  color: Colors.deepOrange,
                  height: 100,
                  width: 100,
                  child:  Icon(Icons.directions_run),
                ),
                childWhenDragging: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text('Child When Dragging'),
                  ),
                ),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text('Draggable'),
                  ),
                ),
              ),
              DragTarget<int>(
                onWillAccept: (data) => data != 10,
                builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                    ) {
                  return Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.cyan,
                    child: Center(
                      child: Text('Value is updated to: $acceptedData'),
                    ),
                  );
                },
                // onMove: (int){
                //   setState(() {
                //     acceptedData -= 10;
                //   });
                // },
                onLeave: (int){
                  setState(() {
                    acceptedData -= 5;
                  });
                },
                onAccept: (int data) {
                  setState(() {
                    acceptedData += data;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class draggablescrollableSheet extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return draggablescrollableSheetstate();
  }
}

class draggablescrollableSheetstate extends State<draggablescrollableSheet>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('DraggableScrollableSheet Widget'),
     ),
     body: DraggableScrollableSheet(
       initialChildSize: 0.4,
         maxChildSize: 0.5,
         minChildSize: 0.2,
         snap: true,
         expand: true,
         snapSizes: [0.5],
         builder: (BuildContext context, ScrollController scrollController) {
           return Container(
             // color: Colors.blue[100],
             child: ListView.builder(
               controller: scrollController,
               itemCount: 25,
               itemBuilder: (BuildContext context, int index) {
                 return Card(
                     child: ListTile(title: Text('Item $index')
                     )
                 );
               },
             ),
           );
         },
       ),
     // ),
   );
  }
}


class interactiveviewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("InterActive Viewer Widget"),
          leading: IconButton(
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }),
        ),
        body:Center(
          child: InteractiveViewer(
            constrained: true,
            scaleEnabled: true,
            panEnabled: false,
            boundaryMargin: const EdgeInsets.all(10.0),
            maxScale: 4,
            minScale: 1,
            // minScale: 0.1 ,
            // maxScale: 1.6,
            clipBehavior: Clip.none,
            child: Image( height: 500,width: 350, fit: BoxFit.cover,
              image: NetworkImage('https://wallpapercave.com/wp/evH6inY.jpg'),
               )
            // Container(
            //   height: 500,
            //   width: 350,
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //       colors: <Color>[Colors.orange, Colors.red],
            //       stops: <double>[0.0, 1.0],
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}

class ignorepointer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer Widget"),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {
                  print("Grey Button Pressed");
                  Fluttertoast.showToast(
                      msg: 'Grey Button Pressed',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black,
                      textColor: Colors.white);
                },
                child: null,
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child:
              IgnorePointer(
                ignoring: true,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {
                    print("Blue Button Pressed");
                    Fluttertoast.showToast(
                        msg: 'Blue Button Pressed',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black,
                        textColor: Colors.white);
                  },
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
