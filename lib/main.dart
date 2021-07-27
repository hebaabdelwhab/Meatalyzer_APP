import 'package:Meatalyzer_app/Screens/Complain_Screen.dart';
import 'package:Meatalyzer_app/Screens/Information_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'Screens/Camera_Screen.dart';
import 'Screens/Slider_screen.dart';
import './Screens/Camera_Screen.dart';
import 'package:flutter/services.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
          splash:Image.asset('assets/images/img8.png',height: 200,width: 300,),
          backgroundColor: Color(0xFFB71C1C) ,
          nextScreen: Slider_screen(),
        ),
        debugShowCheckedModeBanner:false,
        routes:<String,WidgetBuilder>{
          Slider_screen.routName:(ctx)=>Slider_screen(),
          Camera_screen.routName:(ctx)=>Camera_screen(),
          Information_screen.routName:(ctx)=>Information_screen(),
          Complain_Screen.routName:(ctx)=>Complain_Screen(),
          //ExistingCardsPage.routName:(ctx)=>ExistingCardsPage(),

          //Payment_Screen.routName:(ctx)=>Payment_Screen(),
        }
    );
  }
}