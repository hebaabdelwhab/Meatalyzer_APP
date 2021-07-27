import 'package:flutter/material.dart';

class HeaderLabel extends StatelessWidget {
  final String headerText;
  const HeaderLabel({required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        headerText,
        style: TextStyle(color: Color(0xFF808080), fontSize: 28.0),
      ),
    );
  }
}