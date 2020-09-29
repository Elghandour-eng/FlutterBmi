import 'dart:math';

import 'main.dart';
import 'resultpage.dart';
import 'package:flutter/material.dart';


class Brain{
  Brain({@required this.h,@required this.w});
final int h;
final int w;
double _bmi;
String Cal (){
   _bmi =w/pow(h/100, 2);
  return _bmi.toStringAsFixed(1);
}
String N(){
  _bmi =w/pow(h/100, 2);
  if (_bmi >= 25 ){
    return 'OverWeight';
  }else if(_bmi >= 18.5 && _bmi <25){
    return 'Normal';
  }
  else{return 'UnderWieght';}
}
String B(){
  _bmi =w/pow(h/100, 2);
  if (_bmi >= 25){
    return 'You have a higher than normal body weight';
  }else if(_bmi >= 18.5){
    return 'You have a Normal body weight , Good jop';
  }
 else{return 'You have under than normal body weight';}
}
}