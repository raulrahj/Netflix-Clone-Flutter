import 'package:flutter/cupertino.dart';

double displayHeight(context) => MediaQuery.of(context).size.height;
double displayWidth(context) => MediaQuery.of(context).size.width;

Widget addVerticalSpace(double size){
  return SizedBox(height: size,);
}
Widget addHorizontalSpace(double size){
  return SizedBox( width: size,);
}

BorderRadiusGeometry defaultRadius1 = BorderRadius.circular(10);

String test ='https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80';