import 'package:flutter/material.dart';

class TitleBanner extends StatelessWidget {
  final String title;
  const TitleBanner({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Flexible(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              strutStyle: const StrutStyle(fontSize: 12.0),
              text: TextSpan(
                  style: Theme.of(context).textTheme.titleLarge, text: title),
            ),
          ),
        ],
      ),
    );
  }
}
