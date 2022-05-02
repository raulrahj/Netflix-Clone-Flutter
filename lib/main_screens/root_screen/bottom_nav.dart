import 'package:flutter/material.dart';

ValueNotifier<int> indexListener = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexListener,
        builder: (context, int newIndexListener, _) {
          return BottomNavigationBar(
              currentIndex: newIndexListener,
              onTap: (index) {
                indexListener.value = index;
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: 'Fast Laugh'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_circle_down_sharp),
                    label: 'Downloads'),
              ],
              // selectedIconTheme: IconThemeData(color: ),
              unselectedIconTheme: IconThemeData(color: Colors.grey[600]),
              showUnselectedLabels: true,
              selectedLabelStyle: TextStyle(fontSize: 10),
              // selectedIconTheme: IconThemeData(color: Colors.white),
              // selectedLabelStyle: TextStyle(color: Colors.white),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[600],
              );
        });
  }
}
