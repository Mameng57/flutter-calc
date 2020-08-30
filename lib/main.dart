import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String tampil1 = "Tap here", tampil2 = "Tap here", operat  = "+", hasil = "Result";
  int kincir = 0;
  var temp;

  void shift(int a) {
    kincir = a;
  }

  void input(String a) {
    setState(() {
      if (kincir == 0) {
        tampil1 = a;
      }
      else {
        tampil2 = a;
      }
    });
  }

  void oper(String op) {
    setState(() {
      operat = op;
    });
  }

  void hitung() {
      switch (operat) {
        case "-" :
          temp = int.parse(tampil1)-int.parse(tampil2);
          break;
        case "*" :
          temp = int.parse(tampil1)*int.parse(tampil2);
          break;
        case "/" :
          temp = int.parse(tampil1)/int.parse(tampil2);
          break;
        default:
          temp = int.parse(tampil1)+int.parse(tampil2);
        break;
      }
    setState(() {
      hasil = "$temp";
    });
  }

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
                      input("1");
                    },
                    child: Container(
                      child: Text('1'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("2");
                    },
                    child: Container(
                      child: Text('2'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("3");
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
                      input("4");
                    },
                    child: Container(
                      child: Text('4'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("5");
                    },
                    child: Container(
                      child: Text('5'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("6");
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
                      input("7");
                    },
                    child: Container(
                      child: Text('7'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("8");
                    },
                    child: Container(
                      child: Text('8'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("9");
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
                      oper("-");
                    },
                    child: Container(
                      child: Text('-'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      input("0");
                    },
                    child: Container(
                      child: Text('0'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      oper("+");
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
                      oper("*");
                    },
                    child: Container(
                      child: Text('*'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      oper("/");
                    },
                    child: Container(
                      child: Text('/'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: hitung,
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