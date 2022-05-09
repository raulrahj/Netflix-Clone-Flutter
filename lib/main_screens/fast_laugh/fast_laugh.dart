import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/main_screens/fast_laugh/widgets/button.dart';
import 'package:netflix/widgets/loading.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => FutureBuilder(
                future: HttpServices().getTrending(ApiEndPoints.trending),
                builder: (context, AsyncSnapshot snapshot) {
                  return snapshot.hasData
                      ? ListofVedios(
                          index: index,
                          image: snapshot.data[index].posterPath,
                        )
                      : const Loading();
                }),
          ),
        ),
      ),
    );
  }
}

class ListofVedios extends StatelessWidget {
  final String image;
  final int index;
  const ListofVedios({Key? key, required this.index, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: displayHeight(context),
          width: double.infinity,
          child: Image(
            image: NetworkImage(
              ApiEndPoints.img + image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.volume_off_sharp))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(ApiEndPoints.img + image),
                  ),
                ),
                ActionButtons(icon: Icons.emoji_emotions, label: 'LOL'),
                ActionButtons(icon: Icons.add, label: 'My List'),
                ActionButtons(icon: Icons.telegram_outlined, label: 'Share'),
                ActionButtons(icon: Icons.play_arrow, label: 'Play'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
