import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/main_screens/search/search_idle.dart';
import 'package:netflix/main_screens/search/search_result.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CupertinoSearchTextField(backgroundColor: Colors.grey.withOpacity(0.4),
            // suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
            style: TextStyle(color: Colors.grey[500]),
            ),
         Expanded(child: SearchResult()) 
            
            ],
        ),
      ),
    );
  }
}
