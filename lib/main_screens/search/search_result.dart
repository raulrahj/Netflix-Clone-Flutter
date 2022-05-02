import 'package:flutter/material.dart';
import 'package:netflix/core/constants/spacing.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Movie Category',style: Theme.of(context).textTheme.titleLarge,),
        ),
        Expanded(
            child: GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
          crossAxisCount: 3,
          children: List.generate(10, (index) => ResultCard()),
        ))
      ],
    );
  }  
}
class ResultCard extends StatelessWidget {
  const ResultCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context)*.1,
      height: displayHeight(context)*.5,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),fit: BoxFit.cover)),
      
    );
  }
}