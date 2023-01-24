import 'package:flutter/material.dart';
import 'package:widget_catlog/async_widget.dart';
import 'package:widget_catlog/basic_widget.dart';
import 'package:widget_catlog/input_widget.dart';
import 'package:widget_catlog/interaction_model_widgets.dart';
import 'package:widget_catlog/layout_widget.dart';
import 'package:widget_catlog/material_components_widget.dart';
import 'package:widget_catlog/Painting_and_effect_widget.dart';
import 'package:widget_catlog/scrolling_widget.dart';
import 'package:widget_catlog/styling_widget.dart';
import 'package:widget_catlog/widget_of_the_week.dart';

void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.blueGrey,
     ),
     home: MyHomePage(),
   );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text("AppBar"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Expanded(
                child:Row(
                  children:<Widget> [
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(top:15,left: 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => async()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Async Widget"),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(top:15,left: 5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                            MaterialPageRoute(builder: (context){
                              return basic();
                            })
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Basic Widget"),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(top:15,left: 5 ,right: 5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return inputwidget();
                              }),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Input Widget"),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child:Row(
                  children:<Widget> [
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(top:15,left: 5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return interactionwidget();
                              }),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Interaction model widgets"),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(top:15,left: 5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return layoutwidget();
                              })
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Layout Widget"),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(top:15,left: 5 , right: 5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return materialcomponenetswidgets();
                              })
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Material Components"),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
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
                                return paintingandefffect();
                              }),
                            );
                          },
                          child: Text("Painting and effect widgets"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
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
                                return scrollingwidget();
                              }),
                            );
                          },
                          child: Text("Scrolling widgets"),
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
                                return stylwidget();
                              }),
                            );
                          },
                          child: Text("Styling widgets"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
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
                                return widgetofweek();
                              }),
                            );
                          },
                          child: Text("Widget of the Week"),
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

