import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/widgets/title_banner.dart';

class ResumeCard extends StatelessWidget {
  String? image;
  ResumeCard({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          SizedBox(
            child: Container(
              width: displayWidth(context) * .35,
              height: displayHeight(context) * 15,
              decoration: BoxDecoration(
                  borderRadius: defaultRadius1,
                  image: DecorationImage(
                      image: NetworkImage(ApiEndPoints.img + image! ?? test),
                      fit: BoxFit.cover)),
            ),
          ),
        // const  Align(
        //       alignment: Alignment.centerRight,
        //       child: Icon(
        //         Icons.play_circle_rounded,
        //         size: 50,
        //       ))
        ],
      ),
    );
  }
}

class ResumeView extends StatelessWidget {
  String title;
  dynamic image;
  ResumeView({Key? key,required this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TitleBanner(title: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => ResumeCard(
                      image: image[index + 10].posterPath,
                    )),
          ),
        )
      ],
    );
  }
}
