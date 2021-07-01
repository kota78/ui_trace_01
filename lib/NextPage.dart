import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Expanded(child: Container()),
          Text("Enter your name", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 30.0 ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Column(
                children: [
                  new Container(
                      width: 200.0,
                      child: new TextField()
                  ),
                  Text("First",style: TextStyle(color:Colors.grey,fontSize: 20.0),)
                ],
              ),
              Expanded(child: Container()),
              Column(
                children: [
                  new Container(
                      width: 200.0,
                      child: new TextField()
                  ),
                  Text("Last",style: TextStyle(color:Colors.grey , fontSize: 20.0),)
                ],
              ),
              Expanded(child: Container()),
            ],
          ),
          Column(
            children: <Widget>[
              Text("I am 13 years or older"),
            ],
          ),
          Expanded(child: Container()),
        ],)
      ),
    );
  }
}