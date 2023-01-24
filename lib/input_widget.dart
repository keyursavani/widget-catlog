import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputwidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return inputwidgetstate();
  }
}

class inputwidgetstate extends State<inputwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Input Widget"),
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
                     return autocomplete();
                   }),
                 );
               },
               child: Text("Autocomplete"),
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
                   return formwidget();
                 }),
               );
             },
             child: Text("Form"),
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

class autocomplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Autocomplete Example"),
        ),
        body: Center(
          child: autocomplete1(),
        ),
      ),
    );
  }
}

class autocomplete1 extends StatelessWidget{
  static const List<String> _kOptions = <String>[
    'Bhavnagar',
    'Ahmedabad',
    'Surat',
    'Rajkot',
    'Vadodara',
    'Botad',
    'Vadodara',
    'Anand',
    'Gandhinagar',
    'Mehsana',
    'Amreli',
    'Devbhoomi Dwarka',
    'Gir Somnath',
    'Junagadh',
    'Narmada',
    'Bharuch',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
      fieldViewBuilder: (BuildContext context, TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder()
            ),
            controller: textEditingController,
            focusNode: focusNode,
            onSubmitted: (String value) {
            },
          ),
        );
      },
    );
  }
}

class formwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Autocomplete Example"),
        ),
        body: Center(
          child: formwidget1(),
        ),
      ),
    );
  }
}
class formwidget1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return formwidgetstate();
  }
}

class formwidgetstate extends State<formwidget1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
