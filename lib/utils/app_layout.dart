import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWeidth(){
    return Get.width;
  }
  static getHeight(double pixel){
    double x=getScreenHeight()/pixel;
    return getScreenHeight()/x;
  }
  static getWeidth(double pixel){
    double x=getScreenWeidth()/pixel;
    return getScreenWeidth()/x;
  }
}
