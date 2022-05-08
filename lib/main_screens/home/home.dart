import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/api/http_services/request.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/main_screens/home/widgets/categories.dart';
import 'package:netflix/main_screens/home/widgets/main_button.dart';
import 'package:netflix/main_screens/home/widgets/number_card.dart';
import 'package:netflix/main_screens/home/widgets/resume_card.dart';
import 'package:netflix/main_screens/home/widgets/row_view.dart';
import 'package:netflix/main_screens/home/widgets/top_ten_row_view.dart';
import 'package:netflix/widgets/defaultcard.dart';
import 'package:netflix/widgets/loading.dart';
import 'package:netflix/widgets/row_loading.dart';
import 'package:netflix/widgets/title_banner.dart';
import 'package:shimmer/shimmer.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: ((notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              }),
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Stack(
                        children: [
                          FutureBuilder(
                              future: HttpServices()
                                  .getTrending(ApiEndPoints.trending),
                              builder: (context, AsyncSnapshot snapshot) {
                                return snapshot.hasData
                                    ? Container(
                                        height: displayHeight(context) * .6,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://image.tmdb.org/t/p/w500/${snapshot.data[0].posterPath}"),
                                              fit: BoxFit.cover),
                                          //                            boxShadow:const [
                                          //    BoxShadow(
                                          //     color: Colors.blue,
                                          //   ),
                                          //    BoxShadow(
                                          //     color: Colors.blue,
                                          //     spreadRadius: -12.0,
                                          //     blurRadius: 55.0,
                                          //   ),
                                          // ],
                                        ),
                                      )
                                    : const Loading();
                              }),
                          Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const HomeButton(
                                  text: 'My List',
                                  icon: Icons.add,
                                ),
                                TextButton.icon(
                                    style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(
                                          const Size(100, 40)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                    ),
                                    label: const Text(
                                      'Play',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                const HomeButton(
                                  text: 'info',
                                  icon: Icons.info_outline,
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      //______________________________

                      FutureBuilder(
                          future:
                              HttpServices().getTrending(ApiEndPoints.trending),
                          builder: (context, AsyncSnapshot snapshot) {
                            return snapshot.hasData
                                ? ResumeView(
                                    image: snapshot.data,
                                    title: 'Continue Watching for Nivea C M',
                                  )
                                : const RowLoading();
                          }),
                      FutureBuilder(
                          future:
                              HttpServices().getTrending(ApiEndPoints.popular),
                          builder: (context, AsyncSnapshot snapshot) {
                            return snapshot.hasData
                                ? RegularView(
                                    image: snapshot.data,
                                    title: 'Popular on Netflix',
                                  )
                                : Text(snapshot.error.toString());
                          }),
                      FutureBuilder(
                          future:
                              HttpServices().getTrending(ApiEndPoints.trending),
                          builder: (context, AsyncSnapshot snapshot) {
                            return snapshot.hasData
                                ? RegularView(
                                    image: snapshot.data,
                                    title: 'Trending Now',
                                  )
                                : Text(snapshot.error.toString());
                          }),

                      FutureBuilder(
                          future:
                              HttpServices().getTrending(ApiEndPoints.topTen),
                          builder: (context, AsyncSnapshot snapshot) {
                            return snapshot.hasData
                                ? NumberView(
                                    image: snapshot.data[0].posterPath,
                                    images: snapshot.data,
                                    title: 'Top 10 in India Today',
                                  )
                                : Shimmer(
                                    child: DefaultCard(),
                                    gradient: shimmerGradient);
                          }),
                      FutureBuilder(
                          future:
                              HttpServices().getTrending(ApiEndPoints.upcoming),
                          builder: (context, AsyncSnapshot snapshot) {
                            return snapshot.hasData
                                ? RegularView(
                                    image: snapshot.data,
                                    title: 'TV Shows Based on Books',
                                  )
                                : Text(snapshot.error.toString());
                          }),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(microseconds: 5500),
                          width: double.infinity,
                          height: displayHeight(context) * .143,
                          color: Colors.black.withOpacity(.4),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  addHorizontalSpace(5.0),
                                  Image(
                                      width: displayWidth(context) * .1,
                                      height: displayHeight(context) * .04,
                                      image: NetworkImage(logo)),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.cast)),
                                      GestureDetector(
                                        child: SizedBox(
                                          child: Image(
                                            image: NetworkImage(avatar),
                                          ),
                                          width: displayWidth(context) * .1,
                                          height: displayHeight(context) * .035,
                                        ),
                                      )
                                    ],
                                  ),
                                  addHorizontalSpace(5.0),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {},
                                      child: const Text('TV Shows ')),
                                  TextButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (ctx) =>
                                                const CategoriesList(
                                                    isCategory: false));
                                        // });
                                      },
                                      child: const Text('Movies')),
                                  TextButton(
                                    child: Wrap(
                                      children: [
                                        const Text('Categories'),
                                        addHorizontalSpace(5.0),
                                        const Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) =>
                                              const CategoriesList(
                                                  isCategory: true));
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : const Text('')
                ],
              ),
            );
          }),
    );
  }
}
//____________________________
