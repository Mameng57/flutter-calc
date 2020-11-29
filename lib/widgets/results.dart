import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Function _geser;
  final String _op, _angka1, _angka2, _hasil;

  Results(this._geser, this._op, this._angka1, this._angka2, this._hasil);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton( 
          onPressed: () => _geser(0),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Text(_angka1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text(_op),
        ),
        FlatButton(
          onPressed: () => _geser(1),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Text(_angka2),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("="),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(_hasil),
        ),
      ],
    );
  }
}