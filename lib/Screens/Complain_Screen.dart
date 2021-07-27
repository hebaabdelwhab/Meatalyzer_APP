import 'package:Meatalyzer_app/Widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:mailer/smtp_server.dart';
import 'package:mailer/mailer.dart';
import 'package:toast/toast.dart';

class Complain_Screen extends StatefulWidget {
  @override
  _Complain_ScreenState createState() => _Complain_ScreenState();
  static String routName= 'Complain_Screen';
}
class _Complain_ScreenState extends State<Complain_Screen> {
  final String title = 'Complain Form';
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,
    theme: ThemeData(primaryColor: Colors.red[900]),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({
    required this.title,
  });
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final formKey = GlobalKey<FormState>();
  String PhoneNumber = '';
  String Theaddress = '';
  String Complain= '';
  sendMail() async {
    String username = 'meatalyazor@gmail.com';
    String password = '44556677A@';

    final smtpServer = gmail(username, password);
    final message = Message()
      ..from = Address(username)
      ..recipients.add('hebaabdelwhab99@gmail.com')
//      ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
//      ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = 'Mail using mailer package :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h1>Write the content here</h1>\n<p>Hey! its easy use html tags for alignments</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      Toast.show("You have clicked the Button! and email sent", context, duration: 3, gravity:  Toast.CENTER);
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sendMail();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    //backgroundColor: Colors.black,
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Form(
      key: formKey,
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildPhoneNumber(),
          const SizedBox(height: 16),
          buildAddress(),
          const SizedBox(height: 32),
          buildComplain(),
          const SizedBox(height: 32),
          buildSubmit(),
        ],
      ),
    ),
  );
  Widget buildPhoneNumber() => TextFormField(
    decoration: InputDecoration(
      labelText: 'Phone number',
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value!.length < 11) {
        return 'invalid Phone number';
      } else {
        return null;
      }
    },
    maxLength: 11,
    onSaved: (value) => setState(() => PhoneNumber = value!),
  );
  Widget buildAddress() => TextFormField(
    decoration: InputDecoration(
      labelText: 'Address',
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value!.length<10) {
        return 'Please enter the address please';
      } else {
        return null;
      }
    },
    onSaved: (value) => setState(() => Theaddress = value!),
  );
  Widget buildComplain() => TextFormField(
    decoration: InputDecoration(
      labelText: 'Complain',
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value!.length<10) {
        return 'Please enter your complain ';
      } else {
        return null;
      }
    },
    onSaved: (value) => setState(() => Complain = value!),
  );
  Widget buildSubmit() => Builder(
    builder: (context) => ButtonWidget(
      text: 'Submit',
      onClicked: () {
        final isValid = formKey.currentState!.validate();
        if (isValid) {
          sendMail();
          formKey.currentState!.save();
          final message = 'Submit Successfully';
          final snackBar = SnackBar(
            content: Text( message, style: TextStyle(fontSize: 20),),
            backgroundColor: Colors.green,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      color:Color(0xFFB61C1C),
    ),
  );
}