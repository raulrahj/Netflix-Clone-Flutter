import 'package:flutter/cupertino.dart';

double displayHeight(context) =>MediaQuery.of(context).size.height;
double displayWidth(context) => MediaQuery.of(context).size.width;

Widget addVerticalSpace(double size){
  return SizedBox(height: size,);
}
Widget addHorizontalSpace(double size){
  return SizedBox( width: size,);
}