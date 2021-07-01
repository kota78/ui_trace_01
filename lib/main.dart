import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teirei701/NextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

          children: [
            Expanded(child: (Container())),
            Icon(Icons.camera),
            //Image.asset("assets/350x350.jpg"),
            Text("Sign up to spend more time with your\nfriends "),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:4,horizontal:8),
              child: Material(
                color: Colors.blue,
                child: Ink(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    child: InkWell(
                      onTap:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute()),
                        );
                      },
                      child: Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Row(
                                children:[
                                  SizedBox(width: 16,),
                                  Center(child: Icon(Icons.send),),
                                ]
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Continue with Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:4,horizontal:8),
              child: Material(
                color: Colors.grey[300],
                child: Ink(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    child: InkWell(
                      onTap:() {},
                      child: Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Row(
                                children:[
                                  SizedBox(width: 16,),
                                  Center(child: Icon(Icons.mail, color: Colors.grey,),),
                                ]
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Continue with Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),
            ),
            Expanded(child: (Container())),
          ],
        )
    );
  }
}
