import 'package:Meatalyzer_app/Screens/Complain_Screen.dart';
import 'package:Meatalyzer_app/Widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'Camera_Screen.dart';

class Information_screen extends StatefulWidget {
  @override
  _Information_screenState createState() => _Information_screenState();
  static String routName= 'Information_screen';
}
class _Information_screenState extends State<Information_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:[
          SizedBox(
              height: size.height,
              child:Stack(
                  alignment: Alignment.center,
                  children:[
                    Container(
                      margin: EdgeInsets.only(top: size.height*0.4),
                      //height: 500,
                      padding: EdgeInsets.only(
                        top: size.height*0.12,
                      ),
                        decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                        ),
                      ),
                    ),
                    //'This meat is fresh and Edible to eat ',style: TextStyle(fontSize: 15,color: Colors.white,height: 1.5,)
                    Container(
                      alignment: Alignment.topCenter,
                      padding:  EdgeInsets.all(20.0),
                      child: Image(image:Camera_screen.predd!.label=='Meat'?Camera_screen.predd2!.label == "Calf"? AssetImage('assets/images/cow1.png'):AssetImage('assets/images/Pig.png'):AssetImage('assets/images/hh.png'),fit: BoxFit.fill,),
                    ),
                    Container(
                      padding:  EdgeInsets.all(20.0),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text:TextSpan(
                              children: [
                                TextSpan(text:Camera_screen.predd!.label=='Meat'?Camera_screen.predd2!.label=='Calf'?'this piece is '+Camera_screen.predd1!.label+' in the '+Camera_screen.predd2!.label:'This piece is '+Camera_screen.predd2!.label:'Unknown item',
                                    style: TextStyle(fontFamily: 'Roboto',fontSize: 25,
                                      color: Colors.white,height: 1.5,)
                                ),
                              ]
                          )
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding:  EdgeInsets.all(20.0),
                      child: buildSubmit(),
                    ),
                  ])
          ),
        ],
      ),
    );
  }
  Widget buildSubmit() => Builder(
    builder: (context) => ButtonWidget(
      text: 'Form Complain',
      onClicked: () {
        Navigator.of(context).pushNamed(Complain_Screen.routName);
      },
      color:Colors.black,
    ),
  );
}