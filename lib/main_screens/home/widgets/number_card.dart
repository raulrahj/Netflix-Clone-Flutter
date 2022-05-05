
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/core/constants/spacing.dart';

class NumberCard extends StatelessWidget {
  final int? position;
  final String? image;
  const NumberCard({Key? key, this.position,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: displayWidth(context) * .42,
          alignment: Alignment.centerRight,
          child: Container(
            width: displayWidth(context) * .35,
            height: displayHeight(context) * 15,
            decoration: BoxDecoration(
                borderRadius: defaultRadius1,
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage("https://image.tmdb.org/t/p/w500/$image"), fit: BoxFit.cover)),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BorderedText(
            strokeWidth: 4.0,
            strokeColor: Colors.white,
            child: Text(
              position.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 90.0,
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
