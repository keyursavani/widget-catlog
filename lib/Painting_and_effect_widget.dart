import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paintingandefffect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return paintingandefffectstate();
  }
}

class paintingandefffectstate extends State<paintingandefffect> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Painting And Effect Widget"),
      ),
      body: Column(
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
                          return backdropfilter();
                        }),
                      );
                    },
                    child: Text("BackdropFilter"),
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
                        return clipoval();
                      }));
                    },
                    child: Text("ClipOval"),
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
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return custompaint();
                            }),
                          );
                        },
                        child: Text("CustomPaint"),
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
                                return decoratedbox();
                              }));
                        },
                        child: Text("DecoratedBox"),
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
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return fractionaltranslation();
                          }),
                        );
                      },
                      child: Text("FractionalTranslation"),
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
                              return opacity();
                            }));
                      },
                      child: Text("Opacity"),
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
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return rotatedbox();
                          }),
                        );
                      },
                      child: Text("RotatedBox "),
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
                              return transform();
                            }));
                      },
                      child: Text("Transform"),
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
    );
  }
}

class backdropfilter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return backdropfilterstate();
  }
}

class backdropfilterstate extends State<backdropfilter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BackDropFilter Example"),
      ),
      body: Center(
        child: Stack(
          // fit: StackFit.expand,
          children: <Widget>[
            Text('0' * 10000),
            Center(
              child: ClipRect(
                // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  blendMode: BlendMode.srcOver,
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: const Text('Hello World!'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class clipoval extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return clipovalstate();
  }
}

class clipovalstate extends State<clipoval> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipOval Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Text("ClipOval Example"),
            ),
            Expanded(
              child: Center(
                child: ClipOval(
                  clipper: MyClipper(),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5q5qTb1lUgmh7xSpTdnJlpOet2X3WOADIjw&usqp=CAU'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text("ClipRect Example"),
            ),
            Expanded(
              child: ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.5,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5q5qTb1lUgmh7xSpTdnJlpOet2X3WOADIjw&usqp=CAU'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text("ClipRRect Example"),
            ),
            Expanded(
              child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(40.0),
              ),
              child: Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 100,
                ),
                color: Colors.purple,
                child: const Text('ClipRRect',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text("ClipPath Example"),
            ),
            Expanded(
              child: ClipPath(
                clipper: MyCustomClipper(),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    height: 80,
                    width: 100,
                    child: Text("Container"),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
            ),

          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, 200, 100);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
class MyCustomClipper extends CustomClipper<Path>{
  @override
   getClip(Size size) {
    // TODO: implement getClip
    // return Rect.fromLTRB(0, 0, 200, 100);
    return Path()
      ..lineTo(0, size.height * 0.7)
    ..quadraticBezierTo(size.width / 2, 0, size.width, size.height * 0.7)
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height)
    ..close();
  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) => false;
}
class custompaint extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return custompaintstate();
  }
}
class custompaintstate extends State<custompaint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> animation;
  Tween<double> _rotationTween = Tween(begin: -pi, end: pi);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = _rotationTween.animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("CustomPaint Widget"),
     ),
     body: Center(
       child: CustomPaint(
         // size: Size(200 , 200),
         painter: sky(
           progress: _controller.value,
           defaultColor: Colors.grey,
           fillColor: Colors.brown,
         ),
         child: const Center(
           child:
           Text(
             'Hello World!',
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.w900,
               color: Colors.black54,
             ),
           ),
         ),
       ),
     ),
   );
  }
}
class sky extends CustomPainter{
  final double progress;
  final Color defaultColor;
  final Color fillColor;

  sky({
    required this.progress,
    required this.defaultColor,
    required this.fillColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = size.width /30;
    final circleCenter = Offset(size.width / 2, size.height / 2);
    final circleRadius = (size.width - strokeWidth) / 3;

    final paint = Paint()
      ..color = defaultColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(circleCenter, circleRadius, paint);

    final arcPaint = Paint()
      ..color = fillColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(Rect.fromCircle(center: circleCenter, radius: circleRadius),
        -3.14 / 2, 2 * 3.14 * progress, false, arcPaint);

  }

  @override
  bool shouldRepaint(covariant sky oldDelegate) =>
      oldDelegate.progress != progress;
}

class decoratedbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("DecoratedBox Example"),
     ),
     body: Center(
         child: Column(
           children: [
             Expanded(
               child:DecoratedBox(
                   decoration: BoxDecoration(
                     gradient: RadialGradient(
                       center: Alignment(-0.5, -0.6),
                       radius: 0.15,
                       colors: <Color>[
                         Colors.deepOrange,
                         Colors.black12,
                       ],
                       stops: <double>[0.9, 1.0],
                     ),
                   ),
                   position: DecorationPosition.background,
                   child: FlutterLogo(size: 400)
               ),
             ),
             Expanded(
               child: Container(
                 padding: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color: const Color(0xff7c94b6),
                   image: const DecorationImage(
                     image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCsQobhqf97wFXrarxaFxNbw1bMkzdegtbhQ&usqp=CAU'),
                     fit: BoxFit.cover,
                   ),
                   border: Border.all(
                     width: 8,
                   ),
                   borderRadius: BorderRadius.circular(5),
                 ),
               ),
             ),
             Expanded(
               child: Container(
                 child: DecoratedBox(
                   position: DecorationPosition.background,
                   decoration: BoxDecoration(
                     color: const Color(0xFFFFFFFF),
                     border: Border.all(
                       color: const Color(0xFF000000),
                       style: BorderStyle.solid,
                       width: 4.0,
                     ),
                     borderRadius: BorderRadius.zero,
                     shape: BoxShape.rectangle,
                     boxShadow: const <BoxShadow>[
                       BoxShadow(
                         color: Color(0x66000000),
                         blurRadius: 10.0,
                         spreadRadius: 4.0,
                       )
                     ],
                   ),
                   child: Container(
                     child: Container(
                       width: 200,
                       height: 200,
                       padding: EdgeInsets.all(20),
                       child: FlutterLogo(),
                     ),
                   ),
                 ),
               ),
             ),
             Expanded(
               child: Container(
                 child: DecoratedBox(
                   decoration: ShapeDecoration(
                     shape: CircleBorder(),
                     color: Colors.pinkAccent,
                   ),
                   child: Theme(
                     data: Theme.of(context).copyWith(
                       buttonTheme: ButtonTheme.of(context).copyWith(
                         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                       ),
                     ),
                     child: ElevatedButton(
                       // shape: CircleBorder(),
                       child: Text('A'),
                       onPressed: () => {},
                     ),
                   ),
                 ),
               ),
             ),
           ],
         )
     ),
   );
  }
}

class fractionaltranslation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Fractional Translation Widget"),
      ),
      body: Center(
        child: Container(
          color: Colors.black26,
          child: const FractionalTranslation(
            child: Text(
                'Hello World!',
                style: TextStyle(color: Colors.teal, fontSize: 20)
            ),
            translation: const Offset(0.5, 1),
          ),
        ),
      ),
    );
  }
}
class opacity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Widget"),
      ),
      body:  Center(
        child: Container(
          child: Opacity(
              opacity:  1.0,
              child:Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5q5qTb1lUgmh7xSpTdnJlpOet2X3WOADIjw&usqp=CAU',
                  color: const Color.fromRGBO(255, 255, 255, 0.5),
                  colorBlendMode: BlendMode.modulate
              )
          ),
        ),
      ),
    );
  }
}
class rotatedbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Rotated Box Widget"),
     ),
     body: Center(
       child: Column(
         children: [
           Container(
             padding: const EdgeInsets.all(30),
             child: Text("Example Of Transform.Rotate widget"),
           ),
          Transform.rotate(
           angle: -pi / 12.0,
           child: Container(
             padding: const EdgeInsets.all(8.0),
             color: const Color(0xFFE8581C),
             child: const Text('Apartment for rent!'),
           ),
         ),
           Container(
             child: Text("Example of RotateBox"),
             padding: const EdgeInsets.all(30),
           ),
           RotatedBox(
             quarterTurns: 3,
             child: Text('Hello World!'),
           )
       ],
       ),

     ),
   );
  }
}
class transform extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Transform Widget"),
     ),
     body: Center(
       child: Container(
         color: Colors.black,
         child: Transform(
           alignment: Alignment.topRight,
           transform: Matrix4.skewY(0.3)..rotateZ(pi / 12.0),
           child: Container(
             padding: const EdgeInsets.all(8.0),
             color: const Color(0xFFE8581C),
             child: const Text('Apartment for rent!'),
           ),
         ),
       ),
     ),
   );
  }
}