import 'package:flutter/material.dart';
import 'package:netflix/main_screens/home/widgets/main_button.dart';
import 'package:netflix/main_screens/new&hot/widgets/card.dart';

class TabComingSoon extends StatelessWidget {
  dynamic data;

  TabComingSoon({Key? key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
          10,
          (index) => TabOneTile(
                image: data[index].backImage,
                title: data[index].title,
                overView: data[index].overView,
                type: data[index].type,
                // iconSize: 22,
                date: true,
                actionbuttons: const [
                  HomeButton(
                    text: 'Remind Me',
                    icon: Icons.notifications_outlined,
                    size: 28,
                  ),
                  HomeButton(
                    size: 28,
                    text: 'Info',
                    icon: Icons.info_outline,
                  )
                ],
              )),
    );
  }
}
