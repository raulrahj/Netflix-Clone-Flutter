import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/core/constants/spacing.dart';

class SearchTileIdle extends StatelessWidget {
  final String title;
  final String image;
  const SearchTileIdle({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: displayWidth(context) * .35,
          height: displayHeight(context) * .1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: NetworkImage(
                    ApiEndPoints.img + image,
                  ),
                  fit: BoxFit.cover)),
        ),
        addHorizontalSpace(8.0),
        Expanded(
          child: Text(
            title ?? 'loading.',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Spacer(),
        Icon(
          Icons.play_circle_outlined,
          size: displayWidth(context) * .14,
        )
      ],
    );
  }
}

class ResultCard extends StatelessWidget {
  String image;
  ResultCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) * .1,
      height: displayHeight(context) * .5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(ApiEndPoints.img + image),
              fit: BoxFit.cover)),
    );
  }
}
