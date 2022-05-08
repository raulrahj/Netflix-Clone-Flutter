import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/main_screens/search/widgets/search_tiles.dart';
import 'package:netflix/widgets/loading.dart';

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
          child: FutureBuilder(
              future: HttpServices().getUpcoming(ApiEndPoints.trending),
              builder: (context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return SearchTileIdle(
                            image: snapshot.data[index + 5].backImage,
                            title: snapshot.data[index + 5].title,
                          );
                        }),
                        separatorBuilder: ((context, index) =>const Divider()),
                        itemCount: 5)
                    : const Loading();
              }),
        ),
      ],
    );
  }
}
