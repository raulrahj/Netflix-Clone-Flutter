import 'package:flutter/material.dart';
import 'package:netflix/main_screens/home/widgets/main_button.dart';
import 'package:netflix/main_screens/new&hot/widgets/card.dart';

class TabWatching extends StatelessWidget {
  dynamic data;
  TabWatching({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: List.generate(
        5,
          (index) => TabOneTile(
                image: data[index ].backImage,
                title: data[index ].title,
                overView: data[index ].overView,
                type: data[index ].type,
                actionbuttons: const [
                  HomeButton(
                    text: 'Share',
                    icon: Icons.telegram,
                    size: 28,
                  ),
                  HomeButton(
                    text: 'My List',
                    icon: Icons.add,
                    size: 28,
                  ),
                  HomeButton(
                    text: 'Play',
                    icon: Icons.play_arrow_rounded,
                    size: 30,
                  )
                ],
                date: false,
              )),
    );
  }
}
