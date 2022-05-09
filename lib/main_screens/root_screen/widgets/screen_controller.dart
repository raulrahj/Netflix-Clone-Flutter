import 'package:flutter/material.dart';
import 'package:netflix/main_screens/downloads/downloads.dart';
import 'package:netflix/main_screens/fast_laugh/fast_laugh.dart';
import 'package:netflix/main_screens/home/home.dart';
import 'package:netflix/main_screens/new&hot/new_hot.dart';
import 'package:netflix/main_screens/root_screen/bottom_nav.dart';
import 'package:netflix/main_screens/search/search.dart';

class ScreenController extends StatelessWidget {
  ScreenController({Key? key}) : super(key: key);

  final _screens = [Home(), NewHot(), FastLaugh(), Search(), Downloads()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexListener,
            builder: (context, int newIndexListener, _) {
              return _screens[newIndexListener];
            }),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
