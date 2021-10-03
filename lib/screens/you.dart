import 'package:flutter/material.dart';

class You extends StatefulWidget {
  @override
  _YouState createState() => _YouState();
}

class _YouState extends State<You> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
