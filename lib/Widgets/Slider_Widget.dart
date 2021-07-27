import 'package:flutter/material.dart';

class SliderTitle extends StatelessWidget {
  String imageAssetPath, title , desc;
  SliderTitle({required this.imageAssetPath , required this.title,required this.desc});
  @override
  Widget build(BuildContext context) {
   return 
    Container(
      height: MediaQuery.of(context).size.height*0.6,
      color:Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget> [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(200.0),
                bottomRight: Radius.circular(150.0),
                bottomLeft: Radius.circular(200.0),
                topLeft: Radius.circular(150.0)),
              color: Colors.red[900]),

            child : CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(imageAssetPath),
            backgroundColor: Colors.red[900],
            ),
          ),
          SizedBox(height:40),
          Text(title , style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 22 ,
            fontWeight: FontWeight.bold,
            color: Colors.red[900]
          ),),
          SizedBox(height:15,),
          Text(desc,style: TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w100,
            color: Colors.grey)),
        ],
      ),
    )
    ;
  }
}