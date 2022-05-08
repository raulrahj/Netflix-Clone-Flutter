import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/main_screens/search/widgets/search_idle.dart';
import 'package:netflix/main_screens/search/widgets/search_result.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Widget screen = const SearchIdle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              style: TextStyle(color: Colors.grey[500]),
              onTap: () {
                setState(() {
                  screen = const SearchResult();
                });
              },
            ),
            Expanded(child: screen)
          ],
        ),
      ),
    );
  }
}
