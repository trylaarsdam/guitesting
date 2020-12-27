import 'package:flutter/material.dart';

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

  bool _value1 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);

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
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.purple[900],
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: new Row(
              children: [
                new Card(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new Text("CPU Component", style: TextStyle(color: Colors.black, fontSize:22), textAlign: TextAlign.center,)
                  )
                ),
                new Column(
                  children:[
                    new Checkbox(value: _value1, onChanged:_value1Changed),
                  ]
                )
              ],
            )
          )
        )
      ),
    );
  }
}
