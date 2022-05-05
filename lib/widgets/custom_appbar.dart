import 'package:flutter/material.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/core/constants/strings.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  CustomAppbar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        addHorizontalSpace(5.0),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
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
    );
  }
}
