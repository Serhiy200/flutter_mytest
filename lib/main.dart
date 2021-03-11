import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyScreenApp();
  }
}

class _MyScreenApp extends State<MyApp> {
  //Variable which contain color
  Color _color;

  //return random color
  Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }

  @override
  void initState() {
    _color = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _color,
        body: Center(
          child: InkWell(
              child: SimpleTextWidget(),
              onTap: () {
                setState(() {
                  _color = randomColor();
                });
              }),
        ),
      ),
    );
  }
}

//Widget which displayed some text
class SimpleTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Center(child: Text("Hey there", textDirection: TextDirection.ltr)));
  }
}
