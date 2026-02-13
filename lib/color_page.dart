import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {
  final String colorName;
  final Color backgroundColor;

  ColorPage({
    required this.colorName,
    required this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('$colorName 화면'),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Text(
          colorName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}