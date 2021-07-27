/*import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  const ButtonWidget({
    required this.text,
    required this.onClicked,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => RaisedButton(
    child: Text(
      text,
      style: TextStyle(fontSize: 24),
    ),
    shape: StadiumBorder(),
    color:Colors.black,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    textColor: Colors.white,
    onPressed: onClicked,
  );
}*/
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color color;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    required this.color,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => RaisedButton(
    child: Text(
      text,
      style: TextStyle(fontSize: 24),
    ),
    shape: StadiumBorder(),
    color: color,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    textColor: Colors.white,
    onPressed: onClicked,
  );
}