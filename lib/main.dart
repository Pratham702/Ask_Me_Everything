import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(ask());
  
}
class ask extends StatefulWidget {
  @override
  State<ask> createState() => _askState();
}

class _askState extends State<ask> {
  int number=1;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,

        appBar: AppBar(

            backgroundColor: Colors.blue.shade400,
            title: Center(
              child: Text('ASK ME EVERYTHING',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
        ),
        body:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: (){
                setState(() {
                  number=Random().nextInt(4)+1;
                });
              },
              child: Image(
                image: AssetImage('images/ball$number.png'),
              ),
            ),
          ),
        ),

      ),
    );
    ;
  }
}

