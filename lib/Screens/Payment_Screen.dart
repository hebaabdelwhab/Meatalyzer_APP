/*import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';


class Payment_Screen extends StatefulWidget {
  @override
  _Payment_ScreenState createState() => _Payment_ScreenState();
  static String routName= 'Payment_Screen';
}
class _Payment_ScreenState extends State<Payment_Screen> {
  String cardNumber = 'cardNumber';
  String expiryDate = 'expiryDate';
  String cardHolderName = 'cardHolderName';
  String cvvCode = 'cvvCode';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
      */
/*
        child: Column(
          children: [
              CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView:isCvvFocused,
                   height:200,
                   width: MediaQuery.of(context).size.width,
                   animationDuration:Duration(milliseconds: 1000),
              ),
              new OutlineButton(
                  child: Text(
                    'Proceed to Pay',
                     style: TextStyle(color: Colors.red[900]),
                  ),
                  onPressed: null,
                 shape: new RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0)
                 ),
              ),
              Expanded(
                  child:SingleChildScrollView(
                    child: CreditCardForm(
                      onCreditCardModelChange: onModelChange,
                    ),
                  ),
              ),
          ],
        ),
      ),
    );
   }
   void onModelChange(CreditCardModel model)
   {
      setState(() {
        cardNumber = model.cardNumber;
        expiryDate = model.expiryDate;
        cardHolderName = model.cardHolderName;
        cvvCode = model.cvvCode;
        isCvvFocused = model.isCvvFocused;
      });
   }
}*/