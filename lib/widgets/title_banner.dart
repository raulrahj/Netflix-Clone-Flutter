import 'package:flutter/material.dart';

class TitleBanner extends StatelessWidget {
  final title;
  TitleBanner({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
            overflow: TextOverflow.ellipsis,
            textWidthBasis: TextWidthBasis.parent,
          ),
        ],
      ),
    );
  }
}
