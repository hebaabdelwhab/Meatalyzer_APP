import 'package:flutter/material.dart';

class SliderModel{
  String imagePath ;
  String title ;
  String desc ;
  
  SliderModel({required this.imagePath,required this.title,required this.desc});
  void setImageAssertPath(String getImagepath)
  {
    imagePath = getImagepath;
  }
  void setTitle(String getTitle)
  {
    title = getTitle;
  }
  void setDoc(String getDoc)
  {
    desc = getDoc;
  }
  String getImageAssertPath(){
   return imagePath;
  }
  String getTitle(){
    return title;
  }
  String getDosc(){
    return desc;
  }
}
List<SliderModel> getSliders(){

   SliderModel sliderModel = new SliderModel(imagePath: '', desc: '', title: '');
   List<SliderModel> slides = new List<SliderModel>.filled(4,sliderModel);
   //1
   sliderModel.setImageAssertPath("assets/images/meat1.jpg");
   sliderModel.setTitle(" M E A T A L Y Z E R ");
   sliderModel.setDoc(" Welcome to meatalyzer ");
   slides[0]=sliderModel;
   //2
   sliderModel = new SliderModel(imagePath: '', desc: '', title: '');
   sliderModel.setImageAssertPath("assets/images/meat2.jpg");
   sliderModel.setTitle(" How can we help you ? ");
   sliderModel.setDoc(" we can help you by providing you with ability to photograph a piece of meat and know which animal it's, and is edible or not and which part the animal");
   slides[1]=sliderModel;
   //3
   sliderModel = new SliderModel(imagePath: '', title: '', desc: '');
   sliderModel.setImageAssertPath("assets/images/img10.png");
   sliderModel.setTitle("");
   sliderModel.setDoc(" At first take aphoto of a piece of meat and then click on the button below then wait for the result");
   slides[2]=sliderModel;
   //4
   sliderModel = new SliderModel(desc: '', title: '', imagePath: '');
   sliderModel.setImageAssertPath("assets/images/img16.png");
   sliderModel.setTitle(" Lets get start ");
   sliderModel.setDoc("");
   slides[3]=sliderModel;
   return slides;
}
//for payment data
final paymentLabels = [
  'Credit card / Debit card',
  'Cash on delivery',
  'Paypal',
  'Google wallet',
];
final paymentIcons = [
  Icons.credit_card,
  Icons.money_off,
  Icons.payment,
  Icons.account_balance_wallet,
];

