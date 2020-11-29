import 'package:flutter/material.dart';

class Operations extends StatelessWidget {
  final Function _operasi, _hitung, _input;

  Operations(this._operasi, this._input, this._hitung);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => _operasi("-"),
              child: Container(
                child: Text('-'),
              ),
            ),
            RaisedButton(
              onPressed: () => _input('0'),
              child: Container(
                child: Text('0'),
              ),
            ),
            RaisedButton(
              onPressed: () => _operasi("+"),
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
              onPressed: () => _operasi("*"),
              child: Container(
                child: Text('*'),
              ),
            ),
            RaisedButton(
              onPressed: () => _operasi("/"),
              child: Container(
                child: Text('/'),
              ),
            ),
            RaisedButton(
              onPressed: _hitung,
              child: Container(
                child: Text('='),
              ),
            ),
          ],
        ),
      ]
    );
  }
}