import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
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
              image: DecorationImage(image: NetworkImage(ApiEndPoints.img+image! ?? test),fit: BoxFit.cover)
            ),
          ),
        );
      }
    );
  }
}