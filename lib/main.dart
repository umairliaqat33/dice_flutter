import 'dart:math';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

var leftdice=1;
var rightdice=1;

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text("Dice")),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      rightdice= Random().nextInt(6)+1;
                      leftdice= Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$leftdice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: (){
                      leftdice= Random().nextInt(6)+1;
                      rightdice= Random().nextInt(6)+1;
                    },
                    child: Image.asset('images/dice$rightdice.png')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
