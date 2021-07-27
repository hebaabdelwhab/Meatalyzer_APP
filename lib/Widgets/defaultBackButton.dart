import 'package:flutter/material.dart';

class DefaultBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFF8084)),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}