import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  final Function _input;
  final List<String> _pencetan;

  Numbers(this._input, this._pencetan);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...(_pencetan).map((tombol) {
          return RaisedButton(
            onPressed: () => _input(tombol),
            child: Text(tombol), 
          );
        }).toList()
      ],
    ); 
  }
}