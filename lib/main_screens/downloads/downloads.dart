import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/widgets/custom_appbar.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:const Size.fromHeight(50),
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
            addVerticalSpace(displayHeight(context)*.06),
          Text(
            'Introducing Downloads for You',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22),textAlign: TextAlign.center,
          ),
           Text(
              'We ll download a personalized selection of movies ad shows for you, so there s always something to watch on your phone.',style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
          Container(
            width: displayWidth(context),
            height: displayWidth(context) * .9,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: displayWidth(context) * .31,
                ),
                CircularWidget(
                  image: circleImages[1],
                  margin:const EdgeInsets.only(
                    bottom: 14,
                    left: 135,
                  ),
                  angle: 20,
                ),
                CircularWidget(
                  image: circleImages[2],
                  margin:const EdgeInsets.only(
                    bottom: 14,
                    right: 135,
                  ),
                  angle: -20,
                ),
                CircularWidget(
                  image: circleImages[0],
                  margin:const EdgeInsets.only(bottom: 0),
                  size: Size(displayWidth(context) * .34,
                      displayHeight(context) * .25),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: MaterialButton(
              height: 42,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              onPressed: () {},
              child: const Text('Set up'),
              
            ),
          ),
          addVerticalSpace(displayHeight(context)*.01),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 55),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Find More to Download'),
              style: Theme.of(context)
                  .elevatedButtonTheme
                  .style!
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
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
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
