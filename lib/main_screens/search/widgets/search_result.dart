import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/main_screens/search/widgets/search_tiles.dart';
import 'package:netflix/widgets/loading.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Movie Category',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
            child: GridView.count(
          childAspectRatio: (displayWidth(context) * .25 / 120),
          shrinkWrap: true,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
          children: List.generate(
              20,
              (index) => FutureBuilder(
                  future: HttpServices().getTrending(ApiEndPoints.trending),
                  builder: (context, AsyncSnapshot snapshot) {
                    return snapshot.hasData
                        ? ResultCard(
                            image: snapshot.data[index].posterPath,
                          )
                        : const Loading();
                  })),
        ))
      ],
    );
  }
}
