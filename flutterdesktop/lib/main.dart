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

  bool _value0 = false;
  void _value0Changed(bool value) => setState(() => _value0 = value);
  bool _value1 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);
  bool _value2 = false;
  void _value2Changed(bool value) => setState(() => _value2 = value);
  bool _value3 = false;
  void _value3Changed(bool value) => setState(() => _value3 = value);
  bool _value4 = false;
  void _value4Changed(bool value) => setState(() => _value4 = value);
  bool _value5 = false;
  void _value5Changed(bool value) => setState(() => _value5 = value);
  bool _value6 = false;
  void _value6Changed(bool value) => setState(() => _value6 = value);
  bool _value7 = false;
  void _value7Changed(bool value) => setState(() => _value7 = value);

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
                            child: new Text("0", style: TextStyle(color: Colors.black, fontSize:22), textAlign: TextAlign.center,)
                          )
                        )
                    )
                  ]
                ),
                
                new Row(
                  children:[
                    new Expanded(
                      child: new Checkbox(value: _value7, onChanged:_value7Changed),
                    ),
                    new Expanded(
                      child: new Checkbox(value: _value6, onChanged:_value6Changed),
                    ),
                    new Expanded(
                      child: new Checkbox(value: _value5, onChanged:_value5Changed),
                    ),
                    new Expanded(
                      child: new Checkbox(value: _value4, onChanged:_value4Changed),
                    ),
                    new Expanded(
                      child: new Checkbox(value: _value3, onChanged:_value3Changed),
                    ),
                    new Expanded(
                      child: new Checkbox(value: _value2, onChanged:_value2Changed),
                    ),
                    new Expanded(
                      child: Tooltip(
                        message: 'CLR',
                        child: new Checkbox(value: _value1, onChanged:_value1Changed),
                      )
                    ),
                    new Expanded(
                      child: Tooltip(
                        message: 'OE',
                        child: new Checkbox(value: _value0, onChanged:_value0Changed),
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
