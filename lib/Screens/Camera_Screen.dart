import 'package:Meatalyzer_app/Screens/Information_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import '../classifier.dart';
import '../classifier_quant.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Camera_screen extends StatefulWidget{
  upload_imageState createState() => upload_imageState();
  static String routName= 'camera_screen';
  static var predd;
  static var predd1;
  static var predd2;
}
class upload_imageState extends State<Camera_screen>{
  //For Shared perfernce;
  int count =0;
  //Next Screen
  void _nextScreen (BuildContext cont) async {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    /*if(prefs.getInt("Count")==3) {
      //Navigator.of(cont).pushNamed(StripeHome.routName);
    }
    */
        //count++;
        //prefs.setInt("Count", count);
        Navigator.of(cont).pushNamed(Information_screen.routName);
  }
  //upload image from gallery;
  File? file_image ;
  late Classifier _classifierUnknown;
  late Classifier _classifierRotten;
  late Classifier _classifiertypes;
  var logger = Logger();
  @override
  void initState() {
    super.initState();
    _classifierUnknown = ClassifierQuant(mN: 'mobilenetv2unknown.tflite',lN: 'assets/label2.txt',first: 1, second: 255);
    _classifierRotten = ClassifierQuant(mN:'mobilenetv2SR.tflite',lN: 'assets/labels.txt',first: 0,second: 1 );
    _classifiertypes = ClassifierQuant(mN: 'typesModel.tflite',lN: 'assets/labels1.txt',first: 1,second: 255);
  }
  Future GetImage(ImageSource Source ) async{
    final Image =  await  ImagePicker.pickImage(source: Source);
    setState(() {
      file_image =File(Image!.path);
      _predict();
    });
  }
  void _predict() async {
    img.Image imageInput = img.decodeImage(file_image!.readAsBytesSync())!;
    var pred = _classifierUnknown.predict(imageInput);
    var pred1 = _classifierRotten.predict(imageInput);
    var pred2 = _classifiertypes.predict(imageInput);
    setState(() {
      Camera_screen.predd = pred;
      Camera_screen.predd1 = pred1;
      Camera_screen.predd2 = pred2;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                file_image==null ?Container(
                  height:400 ,
                  width:400 ,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img19.png'),
                    )
                  ),
                ):Container(
                    height:400 ,
                    width:400 ,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(file_image!),
                        )
                    )
                ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: (){ GetImage(ImageSource.camera);},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  color: Colors.red[900],
                  height: 40,
                  child: Text("Camera",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
              ),
              Container(
                width: double.infinity,
                child:FlatButton(
                  onPressed: (){ GetImage(ImageSource.gallery);},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                  color: Colors.red[900],
                  height: 40,
                  child: Text("Gallery ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: (){file_image==null ?Fluttertoast.showToast(
                      msg: "Please enter image.......",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0
                  ):_nextScreen(context);},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                  color: Colors.red[900],
                  height: 40,
                  child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
              ),
            ]),
    );
  }
}