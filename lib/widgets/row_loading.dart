import 'package:flutter/material.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:shimmer/shimmer.dart';

class RowLoading extends StatelessWidget {
  const RowLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Shimmer(
                gradient: shimmerGradient,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                      width: displayWidth(context) * .35,
                      height: displayHeight(context) * 15,
                      decoration: BoxDecoration(
                        borderRadius: defaultRadius1,
                        color: Colors.grey[700],
                        // image: DecorationImage(image: NetworkImage("https://image.tmdb.org/t/p/w500/$image"),fit: BoxFit.cover)
                      )),
                ),
              ))),
    );
  }
}
