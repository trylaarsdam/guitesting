import 'package:flutter/material.dart';
import 'cpu_component.dart';

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
          child: new LayoutBuilder(
            builder: (
              BuildContext context, BoxConstraints viewPortConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: viewPortConstraints.maxHeight),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ComponentWidget(name: "Comp0", controls: ["OE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp2", controls: ["WE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp4", controls: ["OE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp6", controls: ["WE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp8", controls: ["OE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                          ]
                        ),
                        new Padding(
                          padding: EdgeInsets.all(100)
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ComponentWidget(name: "Comp1", controls: ["OE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp3", controls: ["WE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp5", controls: ["OE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp7", controls: ["WE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                            new Padding(
                              padding: EdgeInsets.all(20)
                            ),
                            ComponentWidget(name: "Comp9", controls: ["OE", "CLR", "LOAD", "NONE", "NONE", "NONE", "NONE", "NONE"]),
                        ]
                      ),
                    ]
                  )
                )
              );
            }
          )
        )
      )
    );
  }
}