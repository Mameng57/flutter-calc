import 'package:flutter/material.dart';
import 'package:startup_namer/widgets/operations.dart';
import 'package:startup_namer/widgets/results.dart';
import 'package:startup_namer/widgets/tanks.dart';
import 'package:startup_namer/widgets/numbers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _kincir = 0;
  var _temp;
  String _op = "+", _angka1 = "Tap here", _angka2 = "Tap here", _hasil = "Hasil";
  static const _pencetanA = ["1", "2", "3"]; 
  static const _pencetanB = ["4", "5", "6"];
  static const _pencetanC = ["7", "8", "9"];

  void _geser(int kincir) {
    _kincir = kincir;
  }

  void _input(String angka) {
    if (_kincir == 0) {
      setState(() {
        _angka1 = angka;
      });
    }
    else {
      setState(() {
        _angka2 = angka;
      });
    }
  }

  void _operasi(String op) {
    setState(() {
      _op = op;
    });
  }

  void _hitung() {
    switch (_op) {
      case "+" :
        _temp = int.parse(_angka1) + int.parse(_angka2);
        break;
      case "-" :
        _temp = int.parse(_angka1) - int.parse(_angka2);
        break;
      case "*" :
        _temp = int.parse(_angka1) * int.parse(_angka2);
        break;
      case "/" :
        _temp = double.parse(_angka1) / double.parse(_angka2);
        break;
    }
    setState(() {
      _hasil = _temp.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/test.jpg', fit: BoxFit.fill),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Results(_geser, _op, _angka1, _angka2, _hasil),
              Numbers(_input, _pencetanA),
              Numbers(_input, _pencetanB),
              Numbers(_input, _pencetanC),
              Operations(_operasi, _input, _hitung),
              GuP(),
            ]
          )
        )
      )
    );
  }
}