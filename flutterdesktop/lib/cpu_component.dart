import 'package:flutter/material.dart';
import 'dart:math' as math;

class ComponentWidget extends StatefulWidget {
  final String name;
  var controls = List.filled(8, "None");
  ComponentWidget({this.name, this.controls});

  @override
  _ComponentWidgetState createState() => _ComponentWidgetState();
}

class _ComponentWidgetState extends State<ComponentWidget>{
  var isSelected = new List.filled(8, false);
  @override
  Widget build(BuildContext context){
    return Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blue[700],
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
                    child: new Text(widget.name, style: TextStyle(color: Colors.black, fontSize:22), textAlign: TextAlign.center,)
                  )
                ),
              ),
              new SizedBox(
                width: 75,
                child:
                  new Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: new Text("f3", style: TextStyle(color: Colors.black, fontSize:22, fontFamily:'RobotoMono'), textAlign: TextAlign.center,)
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
                  color: Colors.grey[850],
                  selectedColor: Colors.white,
                  selectedBorderColor: Colors.transparent,
                  borderColor: Colors.transparent,
                  borderWidth: 1, 
                  children: [
                    Tooltip(
                      message: widget.controls[7],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[6],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[5],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[4],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[3],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[2],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[1],
                      child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(Icons.arrow_drop_down_circle_outlined)
                      ),
                    ),
                    Tooltip(
                      message: widget.controls[0],
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
    );
  }  
}