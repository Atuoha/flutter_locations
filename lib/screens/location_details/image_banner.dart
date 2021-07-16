import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  ImageBanner(this._assetPath);

  Widget build(BuildContext context){
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      decoration: BoxDecoration(color: Colors.grey[100]),
      child: Image.asset(_assetPath, fit: BoxFit.cover)
    );
  }
}
