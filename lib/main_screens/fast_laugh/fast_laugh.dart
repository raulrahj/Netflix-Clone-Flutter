import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/core/constants/spacing.dart';

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
                      : const Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: Colors.white,
                            ),
                          ),
                        );
                }),
          ),
        ),
      ),
    );
  }
}

class ListofVedios extends StatelessWidget {
  final String image;
  final index;
  const ListofVedios({Key? key, required this.index, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: displayHeight(context),
          width: double.infinity,
          child: Image(
            image: NetworkImage(
              ApiEndPoints.img + image,
            ),
            fit: BoxFit.cover,
          ),
          // color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon:const Icon(Icons.volume_off_sharp))
              ],
            )),
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

class ActionButtons extends StatelessWidget {
  IconData icon;
  String label;
  ActionButtons({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          Text(label)
        ],
      ),
    );
  }
}
