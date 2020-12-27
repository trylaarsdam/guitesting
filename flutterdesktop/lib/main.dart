import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CPU',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'CPU'),
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

  var isSelected = new List.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CPU',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CPU Scaffold Testing'),
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.purple[900],
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: new Column(
              children: [
                new Row(
                  children: [
                    new Expanded(
                      child: new Card(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: new Text("CPU Component", style: TextStyle(color: Colors.black, fontSize:22), textAlign: TextAlign.center,)
                        )
                      ),
                    ),
                    new SizedBox(
                      width: 75,
                      child:
                        new Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: new Text("f2", style: TextStyle(color: Colors.black, fontSize:22, fontFamily:'RobotoMono'), textAlign: TextAlign.center,)
                          )
                        )
                    )
                  ]
                ),
                
                new Row(
                  children:[
                    new Expanded(
                      child: ToggleButtons(
                        children: [
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                          Transform.rotate(
                            angle: math.pi,
                            child: Icon(Icons.arrow_drop_down_circle_outlined)
                          ),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected[index] = !isSelected[index];
                          });
                        },
                        isSelected: isSelected,
                      )
                    ),
                  ]
                )
              ],
            ),
          )
        )
      ),
    );
  }
}
