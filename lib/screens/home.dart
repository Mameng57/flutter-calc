import 'package:flutter/material.dart';
import '../components/logic.dart';

class Yuai extends StatefulWidget {
  @override
  _YuaiState createState() => _YuaiState();
}

class _YuaiState extends State<Yuai> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Image.asset('assets/test.jpg', fit: BoxFit.fill, ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton( 
                    onPressed: () {
                      shift(0);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(tampil1),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(operat),
                  ),
                  FlatButton(
                    onPressed: () {
                      shift(1);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(tampil2),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("="),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(hasil),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("1");
                      });
                    },
                    child: Container(
                      child: Text('1'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("2");
                      });
                    },
                    child: Container(
                      child: Text('2'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("3");
                      });
                    },
                    child: Container(
                      child: Text('3'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("4");
                      });
                    },
                    child: Container(
                      child: Text('4'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("5");
                      });
                    },
                    child: Container(
                      child: Text('5'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("6");
                      });
                    },
                    child: Container(
                      child: Text('6'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("7");
                      });
                    },
                    child: Container(
                      child: Text('7'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("8");
                      });
                    },
                    child: Container(
                      child: Text('8'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("9");
                      });
                    },
                    child: Container(
                      child: Text('9'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        oper("-");
                      });
                    },
                    child: Container(
                      child: Text('-'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        input("0");
                      });
                    },
                    child: Container(
                      child: Text('0'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        oper("+");
                      });
                    },
                    child: Container(
                      child: Text('+'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        oper("*");
                      });
                    },
                    child: Container(
                      child: Text('*'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        oper("/");
                      });
                    },
                    child: Container(
                      child: Text('/'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        hitung();
                      });
                    },
                    child: Container(
                      child: Text('='),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Image.asset('assets/test.png', width: 250),
              ),
              Text("made by Mameng", style: TextStyle(fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      )
    );
  }
}