import 'package:flutter/material.dart';
import 'package:netflix/widgets/defaultcard.dart';
import 'package:netflix/widgets/title_banner.dart';

class RegularView extends StatelessWidget {
  String title;
  dynamic image;
  RegularView({Key? key, required this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TitleBanner(title: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => DefaultCard(
                      image: image[index + 10].posterPath,
                    )),
          ),
        )
      ],
    );
  }
}
