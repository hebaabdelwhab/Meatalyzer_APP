import 'package:Meatalyzer_app/Screens/Camera_Screen.dart';
import 'package:flutter/material.dart';
import '../Models/data.dart';
import '../Widgets/Slider_Widget.dart';

class Slider_screen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  static String routName= 'Slider_Screen';
}
class _HomeState extends State<Slider_screen> {
  late List<SliderModel> slides ;
  int CurrentIndex = 0;
  @override
  void initState() {
    super.initState();
    slides = getSliders();
  }
  //Next Screen
  void _nextScreen (BuildContext cont){
    Navigator.of(cont).pushReplacementNamed(Camera_screen.routName);
  }
  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.0),
      height: isCurrentPage ? 10.0 :6.0,
      width: isCurrentPage ? 10.0 :6.0 ,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFFBE0908):Colors.grey[300],
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black87,
       body:Column(children:[
         Expanded(
         child:PageView.builder(
                itemCount:slides.length,
                onPageChanged: (val){
                  setState(() {
                    CurrentIndex = val;
                  });
                },
                itemBuilder:(context,index){
                   return SliderTitle(
                     imageAssetPath:slides[index].getImageAssertPath(),
                     
                     title:slides[index].getTitle(),
                     desc:slides[index].getDosc(),
                   );
                }),
         ),
         Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<slides.length;i++)
                  CurrentIndex == i ?pageIndexIndicator(true) : pageIndexIndicator(false)
              ],
            ),
          ),
         Container(
           padding: EdgeInsets.all(30.0),
           width: double.infinity,
           child: FlatButton(
             child: Text(CurrentIndex == slides.length - 1 ? "GET START": "SKIP"),
             onPressed:(){_nextScreen(context);},
             color: Colors.red[900],
             textColor: Colors.white,
             height: 60,
             // Border radius to button
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
           ),
         ),
         ],
      ),
    );
  }
}