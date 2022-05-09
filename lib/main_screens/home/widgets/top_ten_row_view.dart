import 'package:flutter/material.dart';
import 'package:netflix/main_screens/home/widgets/number_card.dart';
import 'package:netflix/widgets/title_banner.dart';

class NumberView extends StatelessWidget {
  String title;
  dynamic images;
  String? image;
  NumberView({Key? key, required this.title, this.images, this.image})
      : super(key: key);

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
                (index) => NumberCard(
                      position: index + 1,
                      image: images[index].posterPath,
                    )),
          ),
        )
      ],
    );
  }
}
