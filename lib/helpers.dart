
import 'package:flutter/cupertino.dart';

getWidthByPercentage(int per, context){
  return MediaQuery.of(context).size.width*per/100;
}
getHeightByPercentage(int per , context){
  return MediaQuery.of(context).size.height*per/100;
}