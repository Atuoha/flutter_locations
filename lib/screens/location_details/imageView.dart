import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String _assetPath;
  final String name;
  ImageView(this._assetPath, this.name);

  Widget build(BuildContext context) {
    const defaultFontName = 'Montserrat';

    return Stack(
      children: [
        Container(
            constraints: BoxConstraints.expand(height: 200.0),
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Image.asset(_assetPath, fit: BoxFit.cover)),
        Container(
          margin: EdgeInsets.only(top: 120.0),
          child: Center(
            child: Card(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.transparent,
                      color: Colors.white, fontFamily: defaultFontName, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
