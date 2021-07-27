import 'package:Meatalyzer_app/Screens/Camera_Screen.dart';
import 'package:Meatalyzer_app/Widgets/button_widget.dart';
import 'package:Meatalyzer_app/Widgets/constant.dart';
import 'package:Meatalyzer_app/Widgets/emptySection.dart';
import 'package:Meatalyzer_app/Widgets/subTitle.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}
class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(
            emptyImg:  'assets/images/success.gif',
            emptyMsg: 'Successful !!',
          ),
          SubTitle(
            subTitleText: 'Your payment was done successfully',
          ),
          ButtonWidget(
            text: 'Ok',
            onClicked:() => Navigator.of(context).pushNamed(Camera_screen.routName),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
