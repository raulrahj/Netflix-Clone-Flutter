import 'package:flutter/material.dart';

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
