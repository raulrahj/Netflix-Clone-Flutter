import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final double size;
  final double fontsize;
  const HomeButton({Key? key, this.icon, required this.text,this.size=22,this.fontsize=11}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,size: size ,),
        Text(text, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize:fontsize ))
      ],
    );
  }
}
