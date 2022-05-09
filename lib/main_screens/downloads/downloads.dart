import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/widgets/custom_appbar.dart';
import 'package:shimmer/shimmer.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomAppbar(
            title: "Downloads",
          )),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          // addVerticalSpace(displayHeight(context)*.015),

          Row(
            children: [
              const Icon(Icons.settings),
              addVerticalSpace(6.0),
              const Text('Smart Downloads')
            ],
          ),
          addVerticalSpace(displayHeight(context) * .06),
          Text(
            'Introducing Downloads for You',
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22),
            textAlign: TextAlign.center,
          ),
          addVerticalSpace(6.0),
          Text(
            'We ll download a personalized selection of\n movies ad shows for you, so there s always\n something to watch on your phone.',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          FutureBuilder(
              future: HttpServices().getTrending(ApiEndPoints.trending),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? Container(
                        width: displayWidth(context),
                        height: displayWidth(context) * .9,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade600,
                              radius: displayWidth(context) * .31,
                            ),
                            CircularWidget(
                              image: snapshot.data[0].posterPath,
                              margin: const EdgeInsets.only(
                                bottom: 14,
                                left: 135,
                              ),
                              angle: 20,
                            ),
                            CircularWidget(
                              image: snapshot.data[1].posterPath,
                              margin: const EdgeInsets.only(
                                bottom: 14,
                                right: 135,
                              ),
                              angle: -20,
                            ),
                            CircularWidget(
                              image: snapshot.data[2].posterPath,
                              margin: const EdgeInsets.only(bottom: 0),
                              size: Size(displayWidth(context) * .34,
                                  displayHeight(context) * .25),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Shimmer.fromColors(
                            baseColor: Colors.grey.shade800,
                            highlightColor: Colors.black,
                            child: Center(
                              child: Container(
                                width: double.infinity,
                                height: displayWidth(context) * .9,
                                child: CircleAvatar(
                                  radius: displayWidth(context) * .31,
                                  backgroundColor: Colors.grey,
                                ),
                                alignment: Alignment.center,
                              ),
                            )),
                      );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: MaterialButton(
              height: 42,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              onPressed: () {},
              child: const Text('Set up'),
            ),
          ),
          addVerticalSpace(displayHeight(context) * .01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: ElevatedButton(
                onPressed: () {},
                child: const Text('Find More to Download'),
                style: Theme.of(context).elevatedButtonTheme.style!
                // .copyWith(fixedSize: MaterialStateProperty.all(Size(1, ))),
                ),
          )
        ],
      ),
    );
  }
}

class CircularWidget extends StatelessWidget {
  String image;
  double angle;
  Size? size;
  EdgeInsets margin;
  CircularWidget(
      {required this.image,
      this.angle = 0,
      required this.margin,
      this.size,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size?.width ?? displayWidth(context) * .29,
        height: size?.height ?? displayHeight(context) * .22,
        decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage("https://image.tmdb.org/t/p/w500$image",
                    scale: .5),
                fit: BoxFit.cover)),
      ),
    );
  }
}

List<String> circleImages = [
  "https://www.themoviedb.org/t/p/original/2MTMJljusJMFu9QSZfGnaY1B0UK.jpg",
  "https://www.themoviedb.org/t/p/original/fjAAxDPzllwnCMqHDXYlw4IlkaL.jpg",
  "https://www.themoviedb.org/t/p/original/j05hGmB6fvAUuQXQ6raiVJJQnLp.jpg"
];
