import 'package:flutter/material.dart';
import 'package:netflix/core/constants/spacing.dart';

class DefaultCard extends StatelessWidget {
  String? image;
   DefaultCard({ Key? key,this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context,AsyncSnapshot snapshot) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: displayWidth(context)*.35,
            height: displayHeight(context)*15,
            decoration: BoxDecoration(
              borderRadius: defaultRadius1 ,
              color: Colors.red,
              image: DecorationImage(image: NetworkImage("https://image.tmdb.org/t/p/w500/$image"),fit: BoxFit.cover)
            ),
          ),
        );
      }
    );
  }
}