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
            height: 120,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: new Column(
              children: [
                new Padding(
                  padding: EdgeInsets.all(2.5),
                ),
                new Row(
                  children: [
                    new Padding(
                      padding:EdgeInsets.all(2.5),
                    ),
                    new Expanded(
                      child: new Card(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: new Text("Component", style: TextStyle(color: Colors.black, fontSize:22), textAlign: TextAlign.center,)
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
                    ),
                    new Padding(
                      padding: EdgeInsets.all(2.5),
                    )
                  ]
                ),
                
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    new Center(
                      child: ToggleButtons(
                        color: Colors.grey,
                        selectedColor: Colors.white,
                        selectedBorderColor: Colors.transparent,
                        borderColor: Colors.transparent,
                        borderWidth: 1, 
                        children: [
                          Tooltip(
                            message: 'None',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'None',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'None',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'None',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'None',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'LOAD',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'CLR',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
                          ),
                          Tooltip(
                            message: 'OE',
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Icon(Icons.arrow_drop_down_circle_outlined)
                            ),
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
