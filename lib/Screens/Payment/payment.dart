/*import 'package:Meatalyzer_app/Screens/sucess.dart';
import 'package:Meatalyzer_app/Widgets/button_widget.dart';
import 'package:Meatalyzer_app/Widgets/constant.dart';
import 'package:Meatalyzer_app/Widgets/defaultAppBar.dart';
import 'package:Meatalyzer_app/Widgets/defaultBackButton.dart';
import 'package:Meatalyzer_app/Widgets/headerLabel.dart';
import 'package:Meatalyzer_app/Models/data.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: DefaultAppBar(
        title: 'Payment',
        child: DefaultBackButton(),
      ),
      body: Column(
        children: [
          HeaderLabel(
            headerText: 'Choose your payment method',
          ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: kPrimaryColor,
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => value =i),
                  ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(color: kDarkColor),
                  ),
                  trailing: Icon(paymentIcons[index], color: kPrimaryColor),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
          ButtonWidget(
            text: 'Pay',
            onClicked: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Success(),
              ),
            ),
            color:Colors.black,
          ),
        ],
      ),
    );
  }
}
*/