import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class basic extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return basicstate();
  }
}

class basicstate extends State<basic>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widget "),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return AppBarExample();
                    }),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text("AppBar"),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),

            ElevatedButton(
                onPressed: null,
                child:Text("Elevated Button"),
              style:ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 15),
                backgroundColor:Colors.blueGrey,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (context){
                  return scaffoldwidget();
                }),
                );
              },
              child:Text("Scaffold Class"),
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

class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text('Next page'),
                    ),
                    body: Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


class scaffoldwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return scaffoldwidgetstate();
  }
}

class scaffoldwidgetstate extends State<scaffoldwidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Example'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      backgroundColor: Colors.deepOrangeAccent,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

