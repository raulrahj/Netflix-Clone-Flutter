import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/core/constants/spacing.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Top Searches',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return SearchTileIdle();
              }),
              separatorBuilder: ((context, index) => Divider()),
              itemCount: 10),
        ),
      ],
    );
  }
}

class SearchTileIdle extends StatelessWidget {
  const SearchTileIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: displayWidth(context) * .35,
          height: displayHeight(context) * .1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
                  ),
                  fit: BoxFit.cover)),
        ),
        addHorizontalSpace(8.0),
        Text('The Good Doctor'),
        Spacer(),
        Icon(
          Icons.play_circle_outlined,
          size: displayWidth(context) * .1,
        )
      ],
    );
  }
}