import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/main_screens/new&hot/tab_coming_soon.dart';
import 'package:netflix/main_screens/new&hot/tab_watching.dart';
import 'package:shimmer/shimmer.dart';

class NewHot extends StatelessWidget {
  const NewHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New & Hot'),
          actions: [
            const Icon(Icons.cast),
            SizedBox(
              child: Image(
                image: NetworkImage(avatar),
              ),
              width: displayWidth(context) * .1,
              height: displayHeight(context) * .025,
            ),
          ],
          bottom: TabBar(
              indicatorWeight: .2,
              indicator: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: "🔥 Everyone's Watching",
                ),
              ]),
        ),
        body: TabBarView(children: [
          FutureBuilder(
              future: HttpServices().getUpcoming(ApiEndPoints.trending),
              builder: (context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? TabComingSoon(
                        data: snapshot.data,
                      )
                    : const Shimmer(
                        child: Text("Loading"), gradient: shimmerGradient);
              }),
          FutureBuilder(
              future: HttpServices().getUpcoming(ApiEndPoints.trending),
              builder: (context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? TabWatching(
                        data: snapshot.data,
                      )
                    : const Shimmer(
                        child: Text('Loading'), gradient: shimmerGradient);
              })
        ]),
      ),
    );
  }
}
