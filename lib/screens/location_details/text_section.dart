import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPad = 16.0;
  TextSection(this._title, this._body);

  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
              padding: EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
              child: Text(_title, style: Theme.of(context).textTheme.headline1)),
          Container(
              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
              padding: EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
              child: Text(_body, style: Theme.of(context).textTheme.bodyText1))
        ]);
  }
}
